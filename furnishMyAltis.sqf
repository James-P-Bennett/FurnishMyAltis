{
	private _furniture = createVehicle [_x select 0, player position, [], 0, "CAN_COLLIDE"];
	_furniture setDir (getDir player + 180);
	private _furnitureOptionsWithPrices = [
		["Land_TableDesk_F", 10],
		["Land_TablePlastic_01_F", 10],
		["Land_ChairPlastic_F", 10],
		["Land_OfficeChair_01_F", 10],
		["Land_Couch_02_F", 10],
		["Land_Bed_F", 10],
		["Land_ShelvesWooden_F", 10],
		["Land_ShelvesMetal_F", 10],
		["Land_Cabinet_F", 10],
		["Land_Sofa_02_F", 10],
		["Land_Wardrobe_F", 10],
		["Land_MetalCase_01_large_F", 10],
		["Land_TableSmall_01_F", 10],
		["Land_ChairWood_F", 10],
		["Land_ToiletBox_F", 10],
		["Land_WoodenTable_large_F", 10],
		["Land_WoodenTable_small_F", 10],
		["Land_Workbench_01_F", 10],
		["Land_Rack_F", 10],
		["Land_Bookcase_F", 10],
		["Land_Sun_chair_F", 10],
		["Land_Sun_chair_green_F", 10],
		["Land_Laptop_unfolded_F", 10],
		["Land_PCSet_01_F", 10],
		["Land_FlatTV_01_F", 10],
		["Land_Portable_generator_F", 10],
		["Land_CampingChair_V1_F", 10],
		["Land_CampingChair_V2_F", 10],
		["Land_CampingTable_F", 10]
	];
	createDialog "FurnitureShop";
	private _list = ((findDisplay 8000) displayCtrl 1500);
	lbClear _list;
	{
		_list lbAdd format ["%1 ($%2)", _x select 0, _x select 1];
	} forEach _furnitureOptionsWithPrices;
} forEach _furnitureOptionsWithPrices;