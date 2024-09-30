//
//  ViewController.swift
//  Exemplo1 Rest IOS Swift Nutella
//
//  Created by Usuário Convidado on 09/09/24.
//

import UIKit

var comic:Comic!=nil

class ViewController: UIViewController {
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var minhaImagem: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func exibir(_ sender: Any) {
        loadComic()
    }
    func loadComic(){
        let jsonURLString = "https://xkcd.com/info.0.json"
        let url = URL(string: jsonURLString)
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else {return}
            
            do{
                comic = try JSONDecoder().decode(Comic.self, from: data)
                //print(comic.title)
                let imagem = self.carregarImagem(urlImagem: comic.img)
                DispatchQueue.main.sync {
                    self.lblTitulo.text = comic.title
                    self.lblID.text = String(comic.num)
                    self.lblData.text = comic.day + "/" + comic.month + "/" + comic.year
                    self.minhaImagem.image = imagem
                }
            }catch let jsonError{
                print("Error serialization Json", jsonError)
            }
        }
        .resume()
    }
    
    func carregarImagem(urlImagem:String)->UIImage?{
        //Obtendo uma URL válida
        guard let url = URL(string: urlImagem)
        else{
            print("Não foi possível criar a URL")
            return nil
        }
        var image:UIImage? = nil
        do {
            //Obtendo os dados válidos
            let data = try Data(contentsOf: url)
            //Criando a imagem
            image = UIImage(data: data)
        }catch{
            print(error.localizedDescription)
        }
        return image
    }
    
}

