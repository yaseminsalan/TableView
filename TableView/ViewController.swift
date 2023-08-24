//
//  ViewController.swift
//  TableView
//
//  Created by Yasemin salan on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    private var personCellIdentifier = "personCellIdentifier"
    private var people:[Person] = [
        .init(name: "Yasemin", age: 30),
        .init(name: "Ege", age: 29),
        .init(name: "Nursima", age: 20),
        .init(name: "Oktay", age: 22),
        .init(name: "Aslı", age: 45)]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.separatorStyle = .none
        //table view in bazı özelliklerini kullanabilmek için
        tableview.delegate = self
        //table view hangi dataları hangi item ları göstereceğini belirleyen protocoldür.
        tableview.dataSource = self
        
        //kullanacağımız cell i öncelikle tableview e tanıtmamız lazım register etmemiz gerekir.Yani bu cell i tanıyabilmesi ve kullanacağını bilmesi için
        //nib den oluşturulduğu için bu şekilde tanımlanır.
        tableview.register(.init(nibName:"CustomCell",bundle: nil), forCellReuseIdentifier: personCellIdentifier)
        print("deneme")
        
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDelegate{}
extension ViewController:UITableViewDataSource{
   /* func numberOfSections(in tableView: UITableView) -> Int {
        //row yapısını başlık ekler.iphone telefonda ayarlar sayfası düşünülebilir.
        return 2
    }*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        //section yapısı kullanılanıcak ise hangi section da kaç tane row olacağı ayarlanır.
        /*if section == 0 {
            return 10
        }else{
            return 6
        }*/
        
        //kaç tane row gösterileceğini belirlenir.
        //birden çok section kullanılmayacak ise section belirlemeye gerek yoktur.
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //row da hangi cell in gösterileceğini belirlenir
        //istenirse her row da farklı cell ler gösterilebilir.
        
        // default cell yapısı
       /* let cell = UITableViewCell()
        cell.textLabel?.text = people[indexPath.row].name
   
        return cell*/
        
        let cell = tableView.dequeueReusableCell(withIdentifier: personCellIdentifier, for: indexPath) as! CustomCell
        cell.personTitleLabel.text = people[indexPath.row].name
        cell.personAgeLabel.text = String(people[indexPath.row].age)
        return cell
        
    }
}
