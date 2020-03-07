
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockState;


	//	Stone Blocks for stone layers	_______________________________________________________________________________________________________________________________________________________________________
global StoneBlockList as IBlockState[] = [
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","chert"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","greywacke"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","dolomite"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","lignite"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","siltstone"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","shale"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","chalk"),
	<blockstate:undergroundbiomes:sedimentary_stone>.withProperty("type","limestone"),

    <blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","migmatite"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","soapstone"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","greenschist"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","blueschist"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","quartzite"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","marble"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","eclogite"),
	<blockstate:undergroundbiomes:metamorphic_stone>.withProperty("type","gneiss"),
    
    <blockstate:undergroundbiomes:igneous_stone>.withProperty("type","dacite"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","komatiite"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","basalt"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","gabbro"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","andesite"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","rhyolite"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","black_granite"),
	<blockstate:undergroundbiomes:igneous_stone>.withProperty("type","red_granite"),
];


    //  Specifying starting values for dynamic variables
var Height = 256;
var Dimension = -11;
var StoneHarvestLevel = 4;
var Switch = false;

    //  Let's get this loop started right yo.
for i in 0 .. StoneBlockList.length {
    print( "Array index: "~i );
    print( "Dimension: "~Dimension );
    print( "StoneHarvestLevel: "~StoneHarvestLevel );

        //  Adjust the harvest level of the layers in the mining dimension.
    mods.td.TieredDepths.addBlacklist(
        StoneBlockList[i],
        256,
        Dimension,
        StoneHarvestLevel
    );
    
        //  Increase the harvest level every 2 layers.
    if (Switch) {
        StoneHarvestLevel+=1;
        Switch=false;
    } else {
        Switch=true;
    }
    
        //  Adjusts dimention when the loop needs it.
    Height-=32;
    if (0 >= Height) {
        Dimension-=1;
        Height = 256;
    }

}