package Servico;

import java.util.ArrayList;

import Entidades.Produto;

public class DatabaseFunctions {
	
	ArrayList<Produto> produtos;
	
	public DatabaseFunctions() {
		this.selectAll();
	}
	public ArrayList<Produto> selectAll(){
		ArrayList<Produto> alp = new ArrayList<Produto>();
		
		Produto p = new Produto();
        p.setNome("Camiseta Iron Man");
        p.setId(1);
        p.setPreco(39.99);
        p.setTamanho("P,M e G");
        p.setDescricao("camisa do Edu Ribeiro");
        alp.add(p);
        
        Produto p2 = new Produto();
        p2.setNome("Camiseta Hulk");
        p2.setId(2);
        p2.setPreco(35.99);
        p2.setTamanho("M,G");
        p2.setDescricao("Esta é uma camisa do Hulk");
        alp.add(p2);
        
        Produto p3 = new Produto();
        p3.setNome("Camiseta Thor");
        p3.setId(3);
        p3.setPreco(34.99);
        p3.setTamanho("P,M");
        p3.setDescricao("Esta é uma camisa do Thor");
        alp.add(p3);
        
        Produto p4 = new Produto();
        p4.setNome("Camiseta Capitão América");
        p4.setId(4);
        p4.setPreco(35.99);
        p4.setTamanho("P");
        p4.setDescricao("Esta é uma camisa do Capitão América");
        alp.add(p4);
        
        Produto p5 = new Produto();
        p5.setNome("Camiseta Dr. Estranho");
        p5.setId(5);
        p5.setPreco(37.99);
        p5.setTamanho("G");
        p5.setDescricao("Esta é uma camisa do Dr. Estranho");
        alp.add(p5);
        
        Produto p6 = new Produto();
        p6.setNome("Camiseta Capitã Marvel");
        p6.setId(6);
        p6.setPreco(39.99);
        p6.setTamanho("P");
        p6.setDescricao("Esta é uma camisa da Capitã Marvel");
        alp.add(p6);
        
		return alp;
	}
	
	public Produto findProduto(int id) {
		ArrayList<Produto> prods = new ArrayList<Produto>();
		Produto prod = new Produto();
		prods = this.selectAll();
		
		for (Produto produto : prods) {
			if (produto.getId() == id) {
				prod = produto;
				break;
			}
		}
		
		return prod;
	}
	
	public ArrayList<Produto> getProdutos(){
		
		return this.produtos;
	}
}
