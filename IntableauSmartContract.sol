pragma solidity ^0.4.26;

contract IntableauSmartContract{
    uint[] public datas;
    uint public somme;
    
    //fonction ajouter des entiers au tableau. il modifie les valeurs du contrat donc est public
    function add(uint data)public{
        datas.push(data);
    }
    //fonction recuperer la valeur du tableau a la position entree. fonction qui affiche juste donc view public...
    function get(uint position)view public returns(uint){
        return datas[position];
    }
    //fonction recuperer toutes les valeurs du tableau
    function getAll()view public returns(uint[] memory){
        return datas;
    }
    //fonction calculer les sommes des valeurs du tableau
    function sommeDatas()public returns(uint){
        uint i=0;
        for (i; i<datas.length; i++){
            somme+=datas[i];
        }
        return somme;
    }
    // fonction afficher la taille du tableau
    function lengthDatas()view public returns(uint){
        return datas.length;
    }
}
