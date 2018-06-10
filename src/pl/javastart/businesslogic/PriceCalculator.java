package pl.javastart.businesslogic;

import pl.javastart.controller.Product;

import java.util.List;

public class PriceCalculator {

    public static double calculatePrice(List<Product> products){

        double price = 0;
        for(Product p : products){
            price += p.getPrice();
        }
        return price;
    }

    public static double calculateMeanPrice(List<Product> products){

        double price = calculatePrice(products);
        int n=products.size();
        return price/n;
    }
}
