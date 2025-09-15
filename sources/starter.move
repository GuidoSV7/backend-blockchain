module starter::practica_sui {
     use std::string::{String, utf8};

    use sui::vec_map::{VecMap, Self};

    #[error]
    const ID_YA_EXISTE: vector<u8> = b"EL ID que se intento inserta ya existe.";
    #[error]
    const ID_NO_EXISTE: vector<u8> = b"EL ID no existe";
    #[error]
    const STOCK_INSUFICIENTE: vector<u8> = b"Stock insuficiente para realizar la resta.";
    
    public struct Ecommerce has key{
        id: UID,
        name:String,
        products: VecMap<u64,Product>
    }


    public struct Product has store, drop{
       
        name: String,
        available: bool,
        stock: u64,

    }

    public fun createEcommerce(ctx: &mut TxContext){
        let ecommerce = Ecommerce {
            id: object::new(ctx),
            name: utf8(b"Ecommerce Bolivia"),
            products: vec_map::empty()
        };

        transfer::transfer(ecommerce, tx_context::sender(ctx));
        
    }

    public fun addProduct(ecommerce: &mut Ecommerce, id:u64, name: String ){
        assert!(!ecommerce.products.contains(&id),ID_YA_EXISTE);
        
        let product = Product{
            name,
            available: true,
            stock: 5

        };

        ecommerce.products.insert(id, product);
    }

    public fun modificar_disponibilidad_producto(ecommerce: &mut Ecommerce, id: u64) {

    assert!(ecommerce.products.contains(&id), ID_NO_EXISTE);

    let producto = ecommerce.products.get_mut(&id);


    producto.available = false;
    }


    public fun eliminar_producto(ecommerce: &mut Ecommerce, id: u64) {
  
        assert!(ecommerce.products.contains(&id), ID_NO_EXISTE);

       
        ecommerce.products.remove(&id);
    }

    public fun restar_stock(ecommerce: &mut Ecommerce, id: u64, cantidad: u64) {

        assert!(ecommerce.products.contains(&id), ID_NO_EXISTE);


        let producto = ecommerce.products.get_mut(&id);


        assert!(producto.stock >= cantidad, STOCK_INSUFICIENTE);

        
        producto.stock = producto.stock - cantidad;
    }

    public fun deleteEcommerce(ecommerce : Ecommerce){
        let Ecommerce {
            id,
            products: _,
            name: _
        } = ecommerce;

        id.delete();
    }
}