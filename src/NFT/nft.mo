import Debug "mo:base/Debug";

// my identity: dgghx-nzfor-4ry2l-3nbba-safxh-dcfh3-4putv-a2le4-ti52q-yxfls-3qe
actor class NFT(name: Text, owner: Principal, content: [Nat8]) {
    // Debug.print("It works!");
    let itemName = name;
    let nftOwner = owner;
    let imageBytes = content;

    public query func getName() : async Text {
        return itemName;
    };

    public query func getOwner() : async Principal {
        return nftOwner;
    };

    public query func getAsset() : async [Nat8] {
        return imageBytes;
    };


};