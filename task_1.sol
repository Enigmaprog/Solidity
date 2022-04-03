pragma solidity >=0.4.22 <0.9.0;

contract FileSave{
    
    ////push
    // struct Img{
    //     address own;
    //     bool Showstatus;              // Img status Public or private     val==>bool 
    //     string imgIPFS;
    // }
    // mapping(string=>Img[]) private File;
    // function greateImgStruct(string memory _imName,string memory _a)public{
    //     timgFile.own=msg.sender;
    //     timgFile.Showstatus=SoStat;
    //     timgFile.imgIPFS=_a;
    //     File[_imName].push(timgFile);
    // }
    
    
    struct Img {
        address own;
        string ImgName;
        bool Showstatus;      // Img status Public or private     val==>bool 
        string imgIPFS;       // Img pixles                       val==>uint256
    }
    
    
    // string a="QmPZhyTu8D7NqR5NvgkgNYsSYD4CNjnyuFejB8i23itJvA";
    uint256 imIndex=0;
    bool private SoStat = false;
    // bool [32][32] _IMG=[[true,true,true,true],[true,true,true,true]];
    Img timgFile;
    
    mapping(uint256=>Img) private File;
    mapping(uint256=>string) public list;

    // function 1). (Save to blockChanin)
    function greateImgStruct(string memory _imName,string memory _a)public{
        timgFile.own = msg.sender;
        timgFile.ImgName = _imName;
        timgFile.Showstatus = SoStat;
        timgFile.imgIPFS = _a;
        list[imIndex] = _imName;
        File[imIndex] = timgFile;
        imIndex+=1;
    }
    
    // function 2). (Read to blockChanin)
    function getImg(uint256 _imIndex) view public returns(string memory){
        if(File[_imIndex].own == msg.sender || File[_imIndex].Showstatus){
            return File[_imIndex].imgIPFS;}
        return "sorry";
    }
     
    
    function ShowStat(bool _SoStat) public {
        SoStat=_SoStat;
    }

}