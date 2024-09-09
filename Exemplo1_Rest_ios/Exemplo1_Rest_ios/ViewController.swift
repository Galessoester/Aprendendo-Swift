//
//  ViewController.swift
//  Exemplo1_Rest_ios
//
//  Created by Usuário Convidado on 09/09/24.
//

import UIKit

var comic:Comic!=nil

class ViewController: UIViewController {

    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    
    @IBOutlet weak var minhaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func loadComic(){
        let jsonUrlString = "https://xkcd.com/info.0.json"
        let url = URL(string: jsonUrlString)
        
        URLSession.shared.dataTask(with: url!){ data, response, error in
            guard let data = data else {return}
            
            do {
                comic = try JSONDecoder().decode(Comic.self, from: data)
                // print(comic.title)
                let imagem = self.carregarImagem(urlImagem: comic.img)
                DispatchQueue.main.sync {
                    self.lblTitulo.text = comic.title
                    self.lblId.text = String(comic.num)
                    self.lblData.text = comic.day + "/" + comic.month + "/" + comic.year
                    self.minhaImagem.image = imagem
                }
            } catch let jsonError {
                print("Error serialization Json", jsonError)
            }
        }
        .resume()
    }
    
    @IBAction func exibir(_ sender: Any) {
        loadComic()
    }
    
    func carregarImagem(urlImagem: String) -> UIImage?{
        guard let url = URL(string: urlImagem)
        else {
            print("Não foi possível criar a URL")
            return nil
        }
        var image:UIImage? = nil
        do {
            // Obtendo os dados válidos
            let data = try Data(contentsOf: url, options: [])
            
            // Criando a imagem
            image = UIImage(data: data)
        } catch {
            print(error.localizedDescription)
        
        }
        return image
    }
    
}

