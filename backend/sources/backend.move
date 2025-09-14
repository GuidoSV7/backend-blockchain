module backend::backend{
    use std::string::{String};
    use std::debug::print;
    use sui::vec_map::{VecMap, Self};

    #[error]
    const ID_YA_EXISTE: vector<u8> = b"EL ID que se intento inserta ya existe.";

    public struct Ecommerce {
        id: UID,
        name:String,
        products: VecMap<u64,Product>
    }

    

    public struct Category{
        name:String
    }

    public struct Product has store{
       
        name: String,
        available: bool

    }

    public fun createEcommerce(ctx: &mut TxContext){
        let ecommerce = Ecommerce {
            id: object::new(ctx).
            name: utf8(b"Ecommerce Bolivia"),
            products: vec_map::empty()
        };

        transfer::transfer(ecommerce, tx_context::sender(ctx));
        
    }

    public fun addProduct(ecommerce: &mut Ecommerce, id:u64, name: String, available: bool ){
        assert!(!ecommerce.products.contains(&id),ID_YA_EXISTE);
        
        let product = Product{
            name,
            available: true

        };

        ecommerce.products.insert(id, product);
    }

    #[test]
    fun prueba(){

    }
}



