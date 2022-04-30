import Cycles "mo:base/ExperimentalCycles";
import Debug "mo:base/Debug";
import Principal "mo:base/principal";
import NFTActorClass "../nft/nft";

actor OpenD {

    public shared(msg) func mint(imageData: [Nat8], name: Text) : async Principal {
        let owner : Principal =  msg.caller;

        // give user some free cycles to create on live network -> ExperimentalCycles
        Debug.print(debug_show(Cycles.balance()));
        Cycles.add(100_500_000_000);
        let newNFT = await NFTActorClass.NFT(name, owner, imageData);
        Debug.print(debug_show(Cycles.balance()));

        let newNFTPrinicipal = await newNFT.getCanisterId();

        return newNFTPrinicipal;
    };

};
