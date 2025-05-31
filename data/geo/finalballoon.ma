//Maya ASCII 2025ff03 scene
//Name: finalballoon.ma
//Last modified: Wed, May 14, 2025 02:42:21 AM
//Codeset: UTF-8
requires maya "2025ff03";
requires "mtoa" "5.4.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Mac OS X 14.5";
fileInfo "UUID" "42BA3A94-7149-7734-723F-719E1F377AD8";
createNode transform -s -n "persp";
	rename -uid "3C855947-7C4B-2612-EE93-359332DC1F97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 30.713673150130216 9.7785483970194829 -39.030116571707644 ;
	setAttr ".r" -type "double3" -11.138352729703533 141.79999999996647 0 ;
	setAttr ".rp" -type "double3" -3.219646771412954e-15 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -1.2003411760908218e-14 -1.229121749519911e-14 2.6667211599605707e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4389376C-4445-8E84-95D8-A79F7A453370";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 50.619163631264783;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8E2F1496-DA49-C56A-EFA8-B49F137FEE2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E9048A56-564B-A659-B36C-AA9F6694A427";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F9AF4A2D-E444-3E98-4D38-CD82E4203294";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F92720E4-494C-DF3C-CB12-FDA437667CB4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0D027541-BB4C-A9B0-D9B9-1EB61CAAAB5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3B6819BE-CE4B-72AA-39FA-AA9EB21E3919";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pSphere1";
	rename -uid "0F42556C-B345-5B03-4676-9DB9E390B44E";
	setAttr ".t" -type "double3" 0.58835166501400704 4.2405227575086739 0.6898208984798031 ;
	setAttr ".s" -type "double3" 4.6467296518520564 4.6467296518520564 4.6467296518520564 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "663F11DF-B649-1CD8-0941-67AA6FEFF50B";
	setAttr -k off ".v";
	setAttr -s 20 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.45162217447068542 0.10000000521540642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	rename -uid "637E3C4B-EB40-23E1-FCE9-CD9BBB336E66";
	setAttr ".t" -type "double3" 0 1.8490789264506602 0 ;
	setAttr ".s" -type "double3" 0.81890733173473629 0.81890733173473629 0.81890733173473629 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "A7EAAB5F-3743-F3CD-E7B9-6E95106F505C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[62]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[63]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[66]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[68]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[70]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[72]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[74]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.057693843 0 ;
	setAttr ".pt[80]" -type "float3" 0 0.057693843 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube1";
	rename -uid "232F15DE-0C4F-5550-0482-308F7DF73246";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "854F41B0-DD4A-F59E-804B-74BCF03D4A54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "5DCF2556-724F-A90A-A9DF-99AB96370BD4";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "82F6A6EB-9744-1F99-F46F-B0B71F9FBFA0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "pCube2";
	rename -uid "6E6DC4BD-5844-BB23-06CF-BE8E96796679";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.456083 -0.24115068 -1.0499196 
		-0.456083 -0.24115068 -1.0499196 -6.1780548 31.425003 -3.423578 -6.1780548 31.425003 
		-3.423578 -6.1780548 31.425003 -3.423578 -6.1780548 31.425003 -3.423578 -0.456083 
		-0.24115068 -1.0499196 -0.456083 -0.24115068 -1.0499196;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "90808342-124C-A11E-8BE2-25A150851780";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "144E490B-304C-5C4E-E3FF-CBB62DA941F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCube3";
	rename -uid "E0B143F7-0447-828F-5152-7C92F36FDBBB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  12.6222 -0.24115068 -16.49361 
		12.6222 -0.24115068 -16.49361 8.8627682 31.386621 -21.806385 8.8627682 31.386621 
		-21.806385 8.8627682 31.386621 -21.806385 8.8627682 31.386621 -21.806385 12.6222 
		-0.24115068 -16.49361 12.6222 -0.24115068 -16.49361;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "9F4F65AD-4C45-7026-6122-9489AD4DFFED";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "153C9BCC-C041-641C-31C6-E4B5641B532C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9" -p "pCube4";
	rename -uid "7AE489DB-A24F-2CDF-0C17-CE838A4CFE8E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  12.6222 -0.24115068 -16.49361 
		12.6222 -0.24115068 -16.49361 8.7965736 31.297701 -13.049215 8.7965736 31.297701 
		-13.049215 8.7965736 31.297701 -13.049215 8.7965736 31.297701 -13.049215 12.6222 
		-0.24115068 -16.49361 12.6222 -0.24115068 -16.49361;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "8B5D8000-8D4D-2E00-3F82-C6920FD13B19";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "5AE46F8B-C943-DD5D-7E42-178BD8783F97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube5";
	rename -uid "AB02D2C2-8848-31A4-70CC-CA9280ABE303";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45608425 -0.24115068 -31.937305 
		-0.45608425 -0.24115068 -31.937305 -6.8673234 31.383299 -31.646877 -6.8673234 31.383299 
		-31.646877 -6.8673234 31.383299 -31.646877 -6.8673234 31.383299 -31.646877 -0.45608425 
		-0.24115068 -31.937305 -0.45608425 -0.24115068 -31.937305;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "1C79C27A-514F-C7A4-7215-EFB7A54D2FA1";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "0BB6470C-EE44-B209-0863-DD9E8C048F33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCube6";
	rename -uid "F0FF94C1-0748-B4C2-1C8D-3EA80B8354F3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45608425 -0.24115068 -31.937305 
		-0.45608425 -0.24115068 -31.937305 2.8351865 31.424759 -28.932825 2.8351865 31.424759 
		-28.932825 2.8351865 31.424759 -28.932825 2.8351865 31.424759 -28.932825 -0.45608425 
		-0.24115068 -31.937305 -0.45608425 -0.24115068 -31.937305;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "F5949EC8-5F4B-7020-717C-04B5F6390BFC";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "A2D5D4C3-9146-74FD-61FE-3A940EB59996";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "pCube7";
	rename -uid "966C4D28-1244-63C8-C2E8-6EA137DADFEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -21.617195 -0.24115068 -26.038336 
		-21.617195 -0.24115068 -26.038336 -21.911304 31.425003 -22.025377 -21.911304 31.425003 
		-22.025377 -21.911304 31.425003 -22.025377 -21.911304 31.425003 -22.025377 -21.617195 
		-0.24115068 -26.038336 -21.617195 -0.24115068 -26.038336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "52FF5FEC-9443-2785-A4AD-8EBDDB9ACA61";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "409B4C09-D840-64FE-2456-DC8DB57D1439";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pCube8";
	rename -uid "27961DD0-FC45-C46D-1C6E-639E9DD2058C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -21.617195 -0.24115068 -26.038336 
		-21.617195 -0.24115068 -26.038336 -15.84354 31.425003 -29.084858 -15.84354 31.425003 
		-29.084858 -15.84354 31.425003 -29.084858 -15.84354 31.425003 -29.084858 -21.617195 
		-0.24115068 -26.038336 -21.617195 -0.24115068 -26.038336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "31913AB5-1E4B-B337-7184-E5914C1E9366";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "F2122CA0-2348-09D7-B87C-99ADD1B7DEC4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube9";
	rename -uid "0BFBFD56-2B47-2250-E9B9-A88B99A05411";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -21.617193 -0.24115068 -6.9488831 
		-21.617193 -0.24115068 -6.9488831 -21.918007 31.424671 -13.234674 -21.918007 31.424671 
		-13.234674 -21.918007 31.424671 -13.234674 -21.918007 31.424671 -13.234674 -21.617193 
		-0.24115068 -6.9488831 -21.617193 -0.24115068 -6.9488831;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "04304A46-5E47-EE22-C822-F59D594DCF32";
	setAttr ".t" -type "double3" 0.24071061744911137 2.6962826685174135 0.73396176880449193 ;
	setAttr ".s" -type "double3" 0.038178521391754858 0.038178521391754858 0.044499762324434131 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "42DACC3B-E14D-11D6-E449-EAB4F11437E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "pCube10";
	rename -uid "BD444948-5447-FD9F-4CDC-2C8EBE4AAD4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -21.617193 -0.24115068 -6.9488831 
		-21.617193 -0.24115068 -6.9488831 -15.915609 31.425003 -6.1336966 -15.915609 31.425003 
		-6.1336966 -15.915609 31.425003 -6.1336966 -15.915609 31.425003 -6.1336966 -21.617193 
		-0.24115068 -6.9488831 -21.617193 -0.24115068 -6.9488831;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FD7B7594-8E49-1F7F-3DFA-77B28013AC1C";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "260666CB-F34D-2004-53FD-29A72AA078BE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2F95F62A-DD47-4571-832D-E4B08C3F8C78";
createNode displayLayerManager -n "layerManager";
	rename -uid "65F51B70-584D-4D42-3EB0-5DB204DEC625";
createNode displayLayer -n "defaultLayer";
	rename -uid "96EFDC16-BA4F-FD55-8CD9-DBA30FECB5AC";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F949D3AE-EA4B-AAB5-7880-3C974E417D8D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F97B570B-E643-5C9B-4DC9-91AEEB5B1DB6";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	rename -uid "E0B739EE-7449-A13A-5197-DD998F333CC3";
createNode polyTweak -n "polyTweak1";
	rename -uid "CD49E395-EF4A-61DF-6F8C-518892E22B20";
	setAttr ".uopa" yes;
	setAttr -s 382 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.22561795 0.95227766 -0.12725888 -0.21068901
		 0.95227766 -0.09795858 -0.18742342 0.95227766 -0.07468196 -0.15811999 0.95227766
		 -0.059751172 -0.12563702 0.95227766 -0.054606553 -0.093039677 0.95227766 -0.059587356
		 -0.063728921 0.95227766 -0.074521929 -0.040467836 0.95227766 -0.097783029 -0.025647253
		 0.95227766 -0.12723088 -0.020501986 0.95227766 -0.15971586 -0.025664257 0.95227766
		 -0.19220641 -0.040594988 0.95227766 -0.22151016 -0.063850433 0.95227766 -0.24476536
		 -0.093177259 0.95227766 -0.25969923 -0.12565656 0.95227766 -0.26484376 -0.15818101
		 0.95227766 -0.25975615 -0.18747826 0.95227766 -0.24482886 -0.21071485 0.95227766
		 -0.22237313 -0.22560368 0.95227766 -0.1930127 -0.2307629 0.95227766 -0.15973808 -0.31827646
		 0.95227766 -0.097789414 -0.28956524 0.95227766 -0.041410595 -0.24476774 0.95227766
		 0.003482396 -0.18839264 0.95227766 0.032224506 -0.12590353 0.95227766 0.042121753
		 -0.063126214 0.95227766 0.032673787 -0.0067186411 0.95227766 0.0039330591 0.038045987
		 0.95227766 -0.040832445 0.066462755 0.95227766 -0.097586118 0.076361537 0.95227766
		 -0.16008331 0.066418827 0.95227766 -0.2225872 0.037563942 0.95227766 -0.27906817
		 -0.0071827997 0.95227766 -0.3237927 -0.063539445 0.95227766 -0.35250804 -0.12610982
		 0.95227766 -0.36246723 -0.18856336 0.95227766 -0.35257542 -0.24490409 0.95227766
		 -0.32386741 -0.28960162 0.95227766 -0.27995172 -0.31830958 0.95227766 -0.22361121
		 -0.32817006 0.95227766 -0.16025375 -0.39653963 0.95227766 -0.073214963 -0.35617965
		 0.95227766 0.0060696546 -0.29335946 0.95227766 0.068938881 -0.21406442 0.95227766
		 0.1096317 -0.12625703 0.95227766 0.12353793 -0.03814853 0.95227766 0.11013554 0.041117631
		 0.95227766 0.06974642 0.10402414 0.95227766 0.0068397373 0.14404947 0.95227766 -0.072773978
		 0.15795943 0.95227766 -0.1605946 0.14374064 0.95227766 -0.24858905 0.10339502 0.95227766
		 -0.3277716 0.04040204 0.95227766 -0.39065835 -0.03878773 0.95227766 -0.43096751 -0.12664703
		 0.95227766 -0.44494933 -0.21435867 0.95227766 -0.43104482 -0.29347137 0.95227766
		 -0.3907145 -0.35624936 0.95227766 -0.32793692 -0.39655507 0.95227766 -0.2488324 -0.41042417
		 0.95227766 -0.16095699 -0.45494869 0.95227778 -0.055095509 -0.40594977 0.95227778
		 0.041247081 -0.32961392 0.95227778 0.11789811 -0.23339806 0.95227778 0.16699198 -0.12653001
		 0.95227778 0.1843546 -0.019738525 0.95227778 0.16755787 0.076792605 0.95227778 0.11878607
		 0.15303063 0.95227778 0.042077154 0.20210598 0.95227778 -0.054239135 0.21858823 0.95227778
		 -0.16128451 0.20157146 0.95227778 -0.26797867 0.15234035 0.95227778 -0.36429492 0.075769469
		 0.95227778 -0.44067127 -0.020576872 0.95227778 -0.48964226 -0.12710249 0.95227778
		 -0.50651217 -0.23372152 0.95227778 -0.48965228 -0.32975274 0.95227778 -0.44068536
		 -0.40596125 0.95227778 -0.36447814 -0.45488372 0.95227778 -0.26830959 -0.47178668
		 0.95227778 -0.16180514 -0.49015227 0.95227778 -0.044231318 -0.43602425 0.95227778
		 0.062589675 -0.35154793 0.95227778 0.14749004 -0.24496564 0.95227778 0.20214815 -0.12667213
		 0.95227778 0.22126861 -0.0082434872 0.95227778 0.20291507 0.098514706 0.95227778
		 0.14858404 0.18321669 0.95227778 0.063881584 0.23735169 0.95227778 -0.043047458 0.25576925
		 0.95227778 -0.16147624 0.23673475 0.95227778 -0.27977225 0.18206228 0.95227778 -0.38639551
		 0.09712787 0.95227778 -0.47091231 -0.0095313527 0.95227778 -0.52507299 -0.12753543
		 0.95227778 -0.54367471 -0.24533337 0.95227778 -0.52495277 -0.35156876 0.95227778
		 -0.47079596 -0.43588009 0.95227778 -0.38648596 -0.49000996 0.95227778 -0.28024906
		 -0.50872135 0.95227778 -0.1623307 -0.5013482 0.95227778 -0.040598024 -0.4456782 0.95227778
		 0.069920778 -0.35856205 0.95227778 0.1576156 -0.24856979 0.95227778 0.21412012 -0.12643512
		 0.95227778 0.23395105 -0.0041108481 0.95227778 0.21506825 0.10617808 0.95227778 0.15897375
		 0.19367252 0.95227778 0.071477823 0.24955897 0.95227778 -0.038981024 0.2685205 0.95227778
		 -0.16129927 0.24879286 0.95227778 -0.28344101 0.192266 0.95227778 -0.39347148 0.10425524
		 0.95227778 -0.48061812 -0.0057415739 0.95227778 -0.53638119 -0.12761796 0.95227778
		 -0.55541462 -0.24895851 0.95227778 -0.53609431 -0.35836864 0.95227778 -0.48028389
		 -0.44520238 0.95227778 -0.39344928 -0.50095373 0.95227778 -0.28403109 -0.52043098
		 0.95227778 -0.16232508 -0.49039328 0.95227754 -0.043071028 -0.43632433 0.95227754
		 0.064304292 -0.35164881 0.95227754 0.14967093 -0.24457964 0.95227754 0.20551617 -0.12558852
		 0.95227754 0.22485384 -0.0062724878 0.95227754 0.20668218 0.10120537 0.95227754 0.15191844
		 0.18664776 0.95227754 0.066727705 0.24099702 0.95227754 -0.041087162 0.25945017 0.95227754
		 -0.16030394 0.23944956 0.95227754 -0.27950341 0.1843653 0.95227754 -0.38653374 0.098813407
		 0.95227754 -0.47121665 -0.0086152107 0.95227754 -0.52524465 -0.12690328 0.95227754
		 -0.54366505 -0.24487866 0.95227754 -0.52476561 -0.35113421 0.95227754 -0.47052571
		 -0.43544826 0.95227754 -0.38617024 -0.48972625 0.95227754 -0.27983791 -0.50863326
		 0.95227754 -0.16176765 -0.46099433 0.95227778 -0.050711438 -0.41133374 0.95227778
		 0.048759658 -0.33327788 0.95227778 0.12848791 -0.23426893 0.95227778 0.17981669 -0.12403296
		 0.95227778 0.19836143 -0.013476433 0.95227778 0.18160383 0.086227104 0.95227778 0.13099645
		 0.16534911 0.95227778 0.05196061 0.21564771 0.95227778 -0.04797611 0.23222692 0.95227778
		 -0.15863036 0.21405588 0.95227778 -0.26881471 0.16228732 0.95227778 -0.36786157 0.082823895
		 0.95227778 -0.44592541 -0.016319655 0.95227778 -0.49567971 -0.12571794 0.95227778
		 -0.51232797 -0.23440333 0.95227778 -0.49480382 -0.33225009 0.95227778 -0.44480228
		 -0.40988839 0.95227778 -0.36710456 -0.45994261 0.95227778 -0.26918957 -0.47774112
		 0.95227778 -0.16015548 -0.41872451 0.95227802 -0.061279491 -0.37522209 0.95227802
		 0.026546577 -0.3065832 0.95227802 0.097075813 -0.21927451 0.95227802 0.14311434 -0.12182283
		 0.95227802 0.15981324 -0.023947584 0.95227802 0.14523652;
	setAttr ".tk[166:331]" 0.064337052 0.95227802 0.1005169 0.1343323 0.95227802
		 0.030523896 0.17872933 0.95227802 -0.057995722 0.193142 0.95227802 -0.15594862 0.17639682
		 0.95227802 -0.25341046 0.13048095 0.95227802 -0.34071678 0.060122345 0.95227802 -0.40933806
		 -0.02741313 0.95227802 -0.45291394 -0.12356552 0.95227802 -0.46749178 -0.21918423
		 0.95227802 -0.4519383 -0.30506641 0.95227802 -0.40772176 -0.37351003 0.95227802 -0.33962253
		 -0.41757107 0.95227802 -0.25350004 -0.43318206 0.95227802 -0.1577352 -0.36944219
		 0.95227718 -0.07298626 -0.33303973 0.95227718 0.0013692835 -0.27529064 0.95227718
		 0.061358064 -0.20152856 0.95227718 0.10074468 -0.11896589 0.95227718 0.11531205 -0.035885517
		 0.95227718 0.10321752 0.039192017 0.95227718 0.065509081 0.098434769 0.95227718 0.0059136464
		 0.13596132 0.95227718 -0.069281735 0.14793801 0.95227718 -0.15243147 0.13332285 0.95227718
		 -0.23501071 0.093998276 0.95227718 -0.30873775 0.034252752 0.95227718 -0.36650079
		 -0.039846361 0.95227718 -0.40287459 -0.12088993 0.95227718 -0.41492528 -0.20125203
		 0.95227718 -0.4016355 -0.27342033 0.95227718 -0.36455661 -0.33080965 0.95227718 -0.30727479
		 -0.36793497 0.95227718 -0.2349534 -0.38136151 0.95227718 -0.15435709 -0.31855604
		 0.95227778 -0.084279642 -0.28935346 0.95227778 -0.023762727 -0.24271575 0.95227778
		 0.025340781 -0.18284974 0.95227778 0.057830993 -0.11559123 0.95227778 0.070082679
		 -0.047765065 0.95227778 0.060489055 0.013409885 0.95227778 0.029607356 0.061968252
		 0.95227778 -0.018802304 0.092336021 0.95227778 -0.080328509 0.10166778 0.95227778
		 -0.14822617 0.089507364 0.95227778 -0.21548845 0.057109635 0.95227778 -0.27533016
		 0.0082383938 0.95227778 -0.32196081 -0.051965252 0.95227778 -0.35119641 -0.11758374
		 0.95227778 -0.36062869 -0.18241484 0.95227778 -0.34969959 -0.24060135 0.95227778
		 -0.31980637 -0.28681901 0.95227778 -0.27359042 -0.31684738 0.95227778 -0.21529967
		 -0.32787567 0.95227778 -0.15021676 -0.27033994 0.95227742 -0.094048873 -0.2478309
		 0.95227742 -0.046541341 -0.21154347 0.95227742 -0.0077660172 -0.16471125 0.95227742
		 0.018117642 -0.1118809 0.95227742 0.028114354 -0.058464404 0.95227742 0.020833012
		 -0.010289323 0.95227742 -0.0034289255 0.027959447 0.95227742 -0.041522324 0.051763847
		 0.95227742 -0.090029255 0.058950126 0.95227742 -0.14353065 0.048804797 0.95227742
		 -0.19637589 0.022988454 0.95227742 -0.24316086 -0.01554244 0.95227742 -0.27943507
		 -0.062715575 0.95227742 -0.30199951 -0.11386786 0.95227742 -0.3091169 -0.1642192
		 0.95227742 -0.30045786 -0.20934448 0.95227742 -0.27721769 -0.24512391 0.95227742
		 -0.24131173 -0.26850429 0.95227742 -0.19611399 -0.27721405 0.95227742 -0.1455366
		 -0.22760329 0.95227766 -0.10172189 -0.21084248 0.95227766 -0.065669015 -0.18357295
		 0.95227766 -0.036039062 -0.14816485 0.95227766 -0.016073914 -0.10804638 0.95227766
		 -0.0081748012 -0.067373902 0.95227766 -0.013497463 -0.030541316 0.95227766 -0.031700179
		 -0.0015756172 0.95227766 -0.060892493 0.016280504 0.95227766 -0.097932398 0.021560948
		 0.95227766 -0.13864836 0.013559477 0.95227766 -0.17877057 -0.0061997436 0.95227766
		 -0.21421276 -0.03568054 0.95227766 -0.24143325 -0.071422815 0.95227766 -0.25823444
		 -0.10995392 0.95227766 -0.26336813 -0.14771949 0.95227766 -0.25676554 -0.18150769
		 0.95227766 -0.23932193 -0.20835897 0.95227766 -0.21247028 -0.22596367 0.95227766
		 -0.17858557 -0.23275952 0.95227766 -0.14055569 -0.19171433 0.95227766 -0.10720517
		 -0.17960976 0.95227766 -0.080694422 -0.15974604 0.95227766 -0.058758467 -0.1338091
		 0.95227766 -0.043843757 -0.10430037 0.95227766 -0.037803039 -0.074311055 0.95227766
		 -0.041559309 -0.04728454 0.95227766 -0.055108637 -0.025895642 0.95227766 -0.076498769
		 -0.012766211 0.95227766 -0.10380174 -0.0090588769 0.95227766 -0.13384204 -0.015138142
		 0.95227766 -0.16337442 -0.029985726 0.95227766 -0.18929268 -0.051723469 0.95227766
		 -0.20914462 -0.077943183 0.95227766 -0.22130878 -0.10605402 0.95227766 -0.22499308
		 -0.13351774 0.95227766 -0.22010642 -0.15796383 0.95227766 -0.20730527 -0.1774298
		 0.95227766 -0.18783946 -0.19024278 0.95227766 -0.16326475 -0.19520502 0.95227766
		 -0.13560809 -0.16286919 0.95227754 -0.11076882 -0.15435295 0.95227754 -0.091867685
		 -0.14029369 0.95227754 -0.076143108 -0.12186458 0.95227754 -0.065371335 -0.10083823
		 0.95227754 -0.060923561 -0.079434507 0.95227754 -0.063499279 -0.060161218 0.95227754
		 -0.073147699 -0.044846039 0.95227754 -0.088348597 -0.035564139 0.95227754 -0.10788908
		 -0.033129562 0.95227754 -0.12936735 -0.037612386 0.95227754 -0.15041232 -0.048284627
		 0.95227754 -0.16884892 -0.063839175 0.95227754 -0.18288997 -0.082483828 0.95227754
		 -0.19146478 -0.10239244 0.95227754 -0.19399373 -0.12176253 0.95227754 -0.19053368
		 -0.13902377 0.95227754 -0.18157522 -0.15274793 0.95227754 -0.16785248 -0.16182369
		 0.95227754 -0.15050507 -0.1653204 0.95227754 -0.13092519 -0.14046006 0.95227766 -0.11289769
		 -0.13461086 0.95227766 -0.099877723 -0.12495445 0.95227766 -0.089017466 -0.11228582
		 0.95227766 -0.081547871 -0.097827092 0.95227766 -0.078426115 -0.083107963 0.95227766
		 -0.080150783 -0.06994082 0.95227766 -0.08686012 -0.059349913 0.95227766 -0.097210251
		 -0.05301071 0.95227766 -0.11066274 -0.051495593 0.95227766 -0.12545745 -0.054559488
		 0.95227766 -0.13993052 -0.061963327 0.95227766 -0.15259668 -0.072643802 0.95227766
		 -0.16228844 -0.085480563 0.95227766 -0.16815469 -0.099128671 0.95227766 -0.16991021
		 -0.1123874 0.95227766 -0.16755505 -0.12419293 0.95227766 -0.16145058 -0.13357644
		 0.95227766 -0.15206908 -0.13977705 0.95227766 -0.14018695 -0.14216371 0.95227766
		 -0.12675123 -0.12343082 0.95227778 -0.11416824 -0.11954209 0.95227778 -0.10562091
		 -0.11317392 0.95227778 -0.098503232 -0.10485917 0.95227778 -0.093615472 -0.095399253
		 0.95227778 -0.091573246 -0.085966997 0.95227778 -0.093067072 -0.077356532 0.95227778
		 -0.097281575 -0.070572793 0.95227778 -0.10406551 -0.066216938 0.95227778 -0.11261328
		 -0.065137818 0.95227778 -0.12227143 -0.067136049 0.95227778 -0.13177574 -0.072042823
		 0.95227778 -0.14008708;
	setAttr ".tk[332:381]" -0.079050854 0.95227778 -0.14647011 -0.087449431 0.95227778
		 -0.15039253 -0.096409231 0.95227778 -0.15159878 -0.10513747 0.95227778 -0.15017127
		 -0.11289919 0.95227778 -0.14614251 -0.11907046 0.95227778 -0.1399717 -0.12311552
		 0.95227778 -0.13213307 -0.12464556 0.95227778 -0.1232748 -0.11055787 0.95227778 -0.11515364
		 -0.10815382 0.95227778 -0.11003155 -0.10427114 0.95227778 -0.10583346 -0.099288873
		 0.95227778 -0.10292102 -0.093659602 0.95227778 -0.10177615 -0.087952152 0.95227778
		 -0.10241896 -0.082869157 0.95227778 -0.10500841 -0.078836262 0.95227778 -0.10904215
		 -0.076384872 0.95227778 -0.11423121 -0.07571961 0.95227778 -0.11996573 -0.076884814
		 0.95227778 -0.1256344 -0.079700291 0.95227778 -0.13066937 -0.083904214 0.95227778
		 -0.13453647 -0.088956729 0.95227778 -0.13693465 -0.09424901 0.95227778 -0.13776094
		 -0.099618517 0.95227778 -0.13689613 -0.10432133 0.95227778 -0.13450029 -0.10805345
		 0.95227778 -0.13076779 -0.11050416 0.95227778 -0.12592505 -0.1113513 0.95227778 -0.12064678
		 -0.10061248 0.95227742 -0.11637259 -0.099434219 0.95227742 -0.11399368 -0.097636051
		 0.95227742 -0.11216868 -0.095259674 0.95227742 -0.11074996 -0.092703074 0.95227742
		 -0.11034474 -0.090052918 0.95227742 -0.11059202 -0.087694794 0.95227742 -0.11173899
		 -0.085843928 0.95227742 -0.11358972 -0.084784999 0.95227742 -0.1160447 -0.08437793
		 0.95227742 -0.11861283 -0.085044451 0.95227742 -0.121317 -0.086209223 0.95227742
		 -0.12359422 -0.088111453 0.95227742 -0.12545457 -0.090378053 0.95227742 -0.12660982
		 -0.092896603 0.95227742 -0.12698811 -0.095507063 0.95227742 -0.12668237 -0.097740129
		 0.95227742 -0.12554485 -0.099512145 0.95227742 -0.12377285 -0.100609 0.95227742 -0.12138461
		 -0.10100606 0.95227742 -0.11887855 -0.12556151 0.95227766 -0.15960726 -0.092428513
		 0.95227695 -0.1182747;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1DFAF643-F34C-682B-DE2B-8EAE22F45E6D";
	setAttr ".dc" -type "componentList" 2 "f[0:19]" "f[360:379]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "16A347B9-A44B-3C02-D673-27808FF69A88";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 498\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 734\n            -height 498\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 498\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1624\n            -height 1022\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1624\\n    -height 1022\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1624\\n    -height 1022\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 10 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "87C3409D-984A-B9D9-2918-9E8E1B5ECFF7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "00F07E39-5E4A-CF61-3B46-D58B769085B9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "4BE34D12-C64E-6574-772B-B2AC42AB8D44";
createNode groupId -n "groupId1";
	rename -uid "CEE09509-5044-48C9-1A45-D18A615D6429";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "5D5BDE10-AD4F-6A01-BE83-FD9FB403CA6F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[6:7]" "f[26:27]" "f[46:47]" "f[66:67]" "f[86:87]" "f[106:107]" "f[126:127]" "f[146:147]" "f[166:167]" "f[186:187]" "f[206:207]" "f[226:227]" "f[246:247]" "f[266:267]" "f[286:287]" "f[306:307]" "f[326:327]" "f[346:347]";
	setAttr ".irc" -type "componentList" 19 "f[0:5]" "f[8:25]" "f[28:45]" "f[48:65]" "f[68:85]" "f[88:105]" "f[108:125]" "f[128:145]" "f[148:165]" "f[168:185]" "f[188:205]" "f[208:225]" "f[228:245]" "f[248:265]" "f[268:285]" "f[288:305]" "f[308:325]" "f[328:345]" "f[348:359]";
createNode groupId -n "groupId2";
	rename -uid "0E4DA082-2B49-F06C-544F-E59302B25200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "D0E29187-994B-E228-BF2F-D5AD1BF3F95C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F3B41B43-3549-9753-4F04-BFB2E870B8B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[8:9]" "f[28:29]" "f[48:49]" "f[68:69]" "f[88:89]" "f[108:109]" "f[128:129]" "f[148:149]" "f[168:169]" "f[188:189]" "f[208:209]" "f[228:229]" "f[248:249]" "f[268:269]" "f[288:289]" "f[308:309]" "f[328:329]" "f[348:349]";
createNode shadingEngine -n "standardSurface3SG";
	rename -uid "220504A2-A049-9194-AAD2-99B149454929";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "69B01136-2740-C8CB-C02C-55A9D03D643D";
createNode groupId -n "groupId4";
	rename -uid "52665837-C541-C3DD-F5A8-7FA2A2FAAAFB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "4DD2F152-5143-19F2-40FE-01B2D6D64B79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[10:11]" "f[30:31]" "f[50:51]" "f[70:71]" "f[90:91]" "f[110:111]" "f[130:131]" "f[150:151]" "f[170:171]" "f[190:191]" "f[210:211]" "f[230:231]" "f[250:251]" "f[270:271]" "f[290:291]" "f[310:311]" "f[330:331]" "f[350:351]";
createNode shadingEngine -n "standardSurface4SG";
	rename -uid "381A73BD-E045-1BA3-1DAF-4088323AC470";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "6E62FC65-7F4A-2892-BC9A-609D36FEDBB2";
createNode groupId -n "groupId5";
	rename -uid "50891C92-A649-0436-873F-78839D45DAD8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "C55D6E49-334F-D88B-6397-FC8C2640C848";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[12:13]" "f[32:33]" "f[52:53]" "f[72:73]" "f[92:93]" "f[112:113]" "f[132:133]" "f[152:153]" "f[172:173]" "f[192:193]" "f[212:213]" "f[232:233]" "f[252:253]" "f[272:273]" "f[292:293]" "f[312:313]" "f[332:333]" "f[352:353]";
createNode shadingEngine -n "standardSurface5SG";
	rename -uid "6C5BF07F-0B40-09F2-0632-BBA5F7FF1ED4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "38B6D159-9F42-706A-DC13-8BBAFB400B70";
createNode groupId -n "groupId6";
	rename -uid "CFF1686D-2746-F785-B2F3-90A98FC57253";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3A058C76-B040-C955-048A-879DDC6727F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[14:15]" "f[34:35]" "f[54:55]" "f[74:75]" "f[94:95]" "f[114:115]" "f[134:135]" "f[154:155]" "f[174:175]" "f[194:195]" "f[214:215]" "f[234:235]" "f[254:255]" "f[274:275]" "f[294:295]" "f[314:315]" "f[334:335]" "f[354:355]";
createNode shadingEngine -n "standardSurface6SG";
	rename -uid "A605628A-A747-F80D-BEB2-2C9DA55DCAF1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "27FE3318-1040-F2B5-54C0-269FF1FAE862";
createNode groupId -n "groupId7";
	rename -uid "0EB75486-2442-6E0F-AC74-D88ED3042084";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "A807A0B0-A547-FE96-F6DF-DBB5E9B61BAD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[16:17]" "f[36:37]" "f[56:57]" "f[76:77]" "f[96:97]" "f[116:117]" "f[136:137]" "f[156:157]" "f[176:177]" "f[196:197]" "f[216:217]" "f[236:237]" "f[256:257]" "f[276:277]" "f[296:297]" "f[316:317]" "f[336:337]" "f[356:357]";
createNode shadingEngine -n "standardSurface7SG";
	rename -uid "8785A3A0-9348-E20E-5D91-E0A3457C9567";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "61B6A6BC-5E45-6AE0-1C23-1F9FEE01E890";
createNode groupId -n "groupId8";
	rename -uid "C4319011-804E-D03A-5F17-A6A02458A2F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "095E1DF8-D54B-4550-CD0D-9D988E6D5F88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[18:19]" "f[38:39]" "f[58:59]" "f[78:79]" "f[98:99]" "f[118:119]" "f[138:139]" "f[158:159]" "f[178:179]" "f[198:199]" "f[218:219]" "f[238:239]" "f[258:259]" "f[278:279]" "f[298:299]" "f[318:319]" "f[338:339]" "f[358:359]";
createNode shadingEngine -n "standardSurface8SG";
	rename -uid "8CE0E10B-C34B-F915-3048-DEB33C24E2C0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "04B6937D-6B47-2C5E-0E1F-6499943C3B73";
createNode groupId -n "groupId9";
	rename -uid "862518CE-B642-93E0-26C9-A0B3D37620C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "2D213186-A74C-20FE-FBC9-30B701065AC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[0:1]" "f[20:21]" "f[40:41]" "f[60:61]" "f[80:81]" "f[100:101]" "f[120:121]" "f[140:141]" "f[160:161]" "f[180:181]" "f[200:201]" "f[220:221]" "f[240:241]" "f[260:261]" "f[280:281]" "f[300:301]" "f[320:321]" "f[340:341]";
createNode shadingEngine -n "standardSurface9SG";
	rename -uid "E09348B1-0541-7081-8771-DB902333BE28";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "D70B8A97-6242-AD76-8B14-7A88BB0E5D19";
createNode groupId -n "groupId10";
	rename -uid "0373082C-EE49-A43C-FD10-278B2120009E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "3FDB7AAB-6E4E-243E-2CCA-17BF4A8BF7F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[2:3]" "f[22:23]" "f[42:43]" "f[62:63]" "f[82:83]" "f[102:103]" "f[122:123]" "f[142:143]" "f[162:163]" "f[182:183]" "f[202:203]" "f[222:223]" "f[242:243]" "f[262:263]" "f[282:283]" "f[302:303]" "f[322:323]" "f[342:343]";
createNode shadingEngine -n "standardSurface10SG";
	rename -uid "F83BD2B5-7142-84D9-C2D3-47A9AA2B9921";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "1A720B9E-CB44-8061-8212-308E5112810A";
createNode groupId -n "groupId11";
	rename -uid "3FD47791-3B48-FF0B-BA38-89A4212569E0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "77D12EA9-AF41-5087-6273-DBAD788D85FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[4:5]" "f[24:25]" "f[44:45]" "f[64:65]" "f[84:85]" "f[104:105]" "f[124:125]" "f[144:145]" "f[164:165]" "f[184:185]" "f[204:205]" "f[224:225]" "f[244:245]" "f[264:265]" "f[284:285]" "f[304:305]" "f[324:325]" "f[344:345]";
createNode shadingEngine -n "standardSurface11SG";
	rename -uid "ED11011A-E640-F672-9FE5-51841E740F70";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "2156F5A6-9541-674E-3C0A-B19B98957C18";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "847F5A66-104F-FF01-733A-29A924CD251D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 180 "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371]" "e[373]" "e[375]" "e[377]" "e[379]" "e[381]" "e[383]" "e[385]" "e[387]" "e[389]" "e[391]" "e[393]" "e[395]" "e[397]" "e[399]" "e[401]" "e[403]" "e[405]" "e[407]" "e[409]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437]" "e[439]" "e[441]" "e[443]" "e[445]" "e[447]" "e[449]" "e[451]" "e[453]" "e[455]" "e[457]" "e[459]" "e[461]" "e[463]" "e[465]" "e[467]" "e[469]" "e[471]" "e[473]" "e[475]" "e[477]" "e[479]" "e[481]" "e[483]" "e[485]" "e[487]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]" "e[499]" "e[501]" "e[503]" "e[505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]" "e[523]" "e[525]" "e[527]" "e[529]" "e[531]" "e[533]" "e[535]" "e[537]" "e[539]" "e[541]" "e[543]" "e[545]" "e[547]" "e[549]" "e[551]" "e[553]" "e[555]" "e[557]" "e[559]" "e[561]" "e[563]" "e[565]" "e[567]" "e[569]" "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]" "e[595]" "e[597]" "e[599]" "e[601]" "e[603]" "e[605]" "e[607]" "e[609]" "e[611]" "e[613]" "e[615]" "e[617]" "e[619]" "e[621]" "e[623]" "e[625]" "e[627]" "e[629]" "e[631]" "e[633]" "e[635]" "e[637]" "e[639]" "e[641]" "e[643]" "e[645]" "e[647]" "e[649]" "e[651]" "e[653]" "e[655]" "e[657]" "e[659]" "e[661]" "e[663]" "e[665]" "e[667]" "e[669]" "e[671]" "e[673]" "e[675]" "e[677]" "e[679]" "e[681]" "e[683]" "e[685]" "e[687]" "e[689]" "e[691]" "e[693]" "e[695]" "e[697]" "e[699]" "e[701]" "e[703]" "e[705]" "e[707]" "e[709]" "e[711]" "e[713]" "e[715]" "e[717]" "e[719]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "D201DF38-664F-D1A8-BC8D-AFBCFA1B6373";
	setAttr ".uopa" yes;
	setAttr -s 361 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.028595012 -0.071246885 -0.0084067862
		 0.028034192 -0.11120065 -0.020414868 0.01790696 -0.071246885 -0.023091378 0.010716064
		 -0.11120065 -0.032955404 0.00059239444 -0.071246885 -0.028712193 -0.010621984 -0.11120065
		 -0.032809339 -0.016633701 -0.071246885 -0.022967009 -0.027940063 -0.11120065 -0.020227119
		 -0.027412135 -0.071246885 -0.0083507299 -0.034661774 -0.11120065 2.9044915e-05 -0.027424244
		 -0.071246885 0.00984939 -0.028096659 -0.11120065 0.020371605 -0.016761698 -0.071246885
		 0.024552165 -0.010756102 -0.11120065 0.032975361 0.00053548772 -0.071246885 0.030163381
		 0.010660617 -0.11120065 0.032953564 0.017869297 -0.071246885 0.024531649 0.028022312
		 -0.11120065 0.020084692 0.028585864 -0.071246885 0.0095669432 0.034661815 -0.11120065
		 -2.629638e-05 -0.005351454 0.1338723 0.0026928345 0 0.10407416 0 -0.0030740551 0.1338723
		 0.0058222935 0 0.10407416 0 0.00060519349 0.1338723 0.0070065316 0 0.10407416 0 0.0042743995
		 0.1338723 0.0057925005 0 0.10407416 0 0.0065609515 0.1338723 0.002676565 0 0.10407416
		 0 0.0065723415 0.1338723 -0.0011878444 0 0.10407416 0 0.0043007927 0.1338723 -0.0043204138
		 0 0.10407416 0 0.00061957887 0.1338723 -0.0055160206 0 0.10407416 0 -0.0030699202
		 0.1338723 -0.0043183453 0 0.10407416 0 -0.0053508743 0.1338723 -0.0011788675 0 0.10407416
		 0 -0.0078905821 0.13085818 0.0035495237 0 0.10408451 0 -0.0046375813 0.13085818 0.0080090035
		 0 0.10408451 0 0.00061526214 0.13085818 0.0096983965 0 0.10408451 0 0.0058592977
		 0.13085818 0.0079762451 0 0.10408451 0 0.0091130817 0.13085818 0.0035179369 0 0.10408451
		 0 0.0091327997 0.13085818 -0.0019976837 0 0.10408451 0 0.0058970349 0.13085818 -0.0064682593
		 0 0.10408451 0 0.00063638017 0.13085818 -0.0081803566 0 0.10408451 0 -0.0046324525
		 0.13085818 -0.0064677391 0 0.10408451 0 -0.0078929681 0.13085818 -0.0019854754 0
		 0.10408451 0 -0.010777943 0.12709901 0.0045088609 0 0.10408457 0 -0.0064155366 0.12709901
		 0.010478194 0 0.10408457 0 0.0006205042 0.12709901 0.012738076 0 0.10408457 0 0.0076450696
		 0.12709901 0.010437837 0 0.10408457 0 0.011998884 0.12709901 0.0044651898 0 0.10408457
		 0 0.012021642 0.12709901 -0.0029227384 0 0.10408457 0 0.0076962225 0.12709901 -0.0089135077
		 0 0.10408457 0 0.00065234839 0.12709901 -0.01121087 0 0.10408457 0 -0.0064147566
		 0.12709901 -0.0089177974 0 0.10408457 0 -0.010783172 0.12709901 -0.0029051495 0 0.10408457
		 0 -0.013940038 0.12269774 0.0055364557 -0.011754828 0.12269774 0.0097786868 -0.0083663315
		 0.12269774 0.013145844 0 0.10408459 0 0.00061176298 0.12269774 0.016029328 0 0.10408459
		 0 0.0095719146 0.12269774 0.013095753 0 0.10408459 0 0.015123681 0.12269774 0.0054768072
		 0 0.10408459 0 0.015151945 0.12269774 -0.0039490247 0 0.10408459 0 0.0096428376 0.12269774
		 -0.011596635 0 0.10408459 0 0.00065539335 0.12269774 -0.014536891 0 0.10408459 0
		 -0.0083734477 0.12269774 -0.01160896 0 0.10408459 0 -0.013954573 0.12269774 -0.0039272569
		 0 0.10408459 0 -0.017220385 0.11776245 0.0065622265 0 0.10408443 0 -0.010398951 0.11776245
		 0.015885573 0 0.10408443 0 0.00058053446 0.11776245 0.019389147 0 0.10408443 0 0.011532953
		 0.11776245 0.015802663 0 0.10408443 0 0.018315738 0.11776245 0.0064890431 0 0.10408443
		 0 0.018372826 0.11776245 -0.005028815 0 0.10408443 0 0.011621181 0.11776245 -0.014390097
		 0 0.10408443 0 0.0006290318 0.11776245 -0.017994545 0 0.10408443 0 -0.010417918 0.11776245
		 -0.014415559 0 0.10408443 0 -0.017244957 0.11776245 -0.0050164759 0 0.10408443 0
		 -0.020411361 0.11241506 0.0075285207 0 0.10408455 0 -0.012378505 0.112415 0.018458895
		 0 0.10408449 0 0.00052315643 0.112415 0.022581339 0 0.10408449 0 0.013387386 0.112415
		 0.018366357 0 0.10408449 0 0.021357365 0.112415 0.0074276179 0 0.10408449 0 0.021416076
		 0.112415 -0.0061075506 0 0.10408449 0 0.013512921 0.11241506 -0.017114963 0 0.10408455
		 0 0.00058530958 0.11241506 -0.021365434 0 0.10408455 0 -0.012416422 0.11241506 -0.017156385
		 0 0.10408455 0 -0.020450138 0.11241506 -0.0060937209 0 0.10408455 0 -0.023255598
		 0.10678685 0.0083358726 0 0.10408448 0 -0.014157396 0.10678685 0.020710699 0 0.10408448
		 0 0.00044163316 0.10678685 0.025354428 0 0.10408448 0 0.014989035 0.10678692 0.020583767
		 0 0.1040845 0 0.024004193 0.10678685 0.0082147513 0 0.10408448 0 0.024090242 0.10678685
		 -0.0070932931 0 0.10408448 0 0.015144492 0.10678685 -0.019557659 0 0.10408448 0 0.00050591561
		 0.10678685 -0.024370454 0 0.10408448 0 -0.014213327 0.10678685 -0.019617278 0 0.10408448
		 0 -0.023298122 0.10678685 -0.0070899851 0 0.10408448 0 -0.025505295 0.10101669 0.0089080278
		 0 0.1040845 0 -0.015578576 0.10101669 0.022395581 0 0.10408454 0 0.00033625303 0.10101673
		 0.027450033 0 0.10408454 0;
	setAttr ".tk[166:331]" 0.016183466 0.10101665 0.022242472 0 0.10408445 0 0.026013639
		 0.10101673 0.0087713785 0 0.10408454 0 0.026110958 0.10101673 -0.0079123173 0 0.1040845
		 0 0.016365645 0.10101669 -0.021505143 0 0.10408449 0 0.00040722411 0.10101669 -0.026763555
		 0 0.10408449 0 -0.015647557 0.10101669 -0.021576859 0 0.10408449 0 -0.025560897 0.10101669
		 -0.0079144277 0 0.10408449 0 -0.026950404 0.095246434 0.009184259 0 0.10408452 0
		 -0.016513202 0.09524636 0.023356717 0 0.10408447 0 0.00021177545 0.095246375 0.028664233
		 0 0.10408452 0 0.016867531 0.095246434 0.023199331 0 0.10408452 0 0.027190875 0.095246434
		 0.0090385098 0 0.10408447 0 0.027295232 0.09524636 -0.0084920805 0 0.10408445 0 0.017058283
		 0.095246434 -0.022780649 0 0.10408446 0 0.00028527243 0.095246375 -0.028312214 0
		 0.10408446 0 -0.016591188 0.095246375 -0.022860117 0 0.10408446 0 -0.02701341 0.095246375
		 -0.0084990431 0 0.10408446 0 -0.027443834 0.089618273 0.0091270618 0 0.10408454 0
		 -0.016868807 0.089618258 0.023484742 0 0.10408447 0 7.4916345e-05 0.089618228 0.028861068
		 0 0.1040845 0 0.016947484 0.089618258 0.023324762 0 0.1040845 0 0.027402379 0.089618258
		 0.0089787934 0 0.10408447 0 0.027511507 0.089618258 -0.0087795202 0 0.10408454 0
		 0.017141245 0.089618273 -0.023256112 0 0.10408451 0 0.00014820827 0.089618243 -0.028861068
		 0 0.10408448 0 -0.016949909 0.089618318 -0.023337893 0 0.10408448 0 -0.027511507
		 0.089618243 -0.0087891817 0 0.10408448 0 -0.026913635 0.084270805 0.0087256134 0
		 0.10408451 0 -0.016598584 0.084270895 0.022735633 0 0.10408445 0 -6.6523644e-05 0.084270775
		 0.027984615 0 0.10408445 0 0.016392551 0.08427082 0.022575602 0 0.10408445 0 0.026604611
		 0.084270775 0.0085858312 0 0.10408445 0 0.026704978 0.084270895 -0.0087444354 0 0.10408451
		 0 0.016582115 0.084270805 -0.022865865 0 0.10408449 0 3.8388721e-06 0.084270895 -0.02833356
		 0 0.10408452 0 -0.016674744 0.084270895 -0.02294375 0 0.10408452 0 -0.026974082 0.084270895
		 -0.008751262 0 0.10408453 0 -0.025361175 0.07933566 0.0079933237 0 0.10408448 0 -0.015699841
		 0.0793356 0.021126999 0 0.10408449 0 -0.0002046985 0.07933563 0.026053227 0 0.1040845
		 0 0.015232525 0.07933563 0.020992381 0 0.1040845 0 0.024799787 0.07933563 0.0078677833
		 0 0.10408449 0 0.024887282 0.0793356 -0.0083777905 0 0.10408448 0 0.015396256 0.07933566
		 -0.021610195 0 0.10408449 0 -0.00014001242 0.07933566 -0.026724797 0 0.10408452 0
		 -0.015765574 0.07933566 -0.021678042 0 0.10408452 0 -0.025415435 0.07933566 -0.008381838
		 0 0.10408449 0 -0.022850078 0.074934378 0.0069631608 0 0.10408455 0 -0.014207847
		 0.074934348 0.018727114 0 0.10408456 0 -0.00033240273 0.074934468 0.023146998 0 0.10408456
		 0 0.013497973 0.074934468 0.018616617 0 0.10408456 0 0.022065623 0.074934468 0.0068569379
		 0 0.10408456 0 0.022141196 0.074934348 -0.0076942965 0 0.10408455 0 0.013633637 0.074934378
		 -0.019537475 0 0.10408453 0 -0.0002750734 0.074934363 -0.02410917 0 0.1040845 0 -0.014254678
		 0.074934363 -0.019585961 0 0.1040845 0 -0.022888638 0.074934363 -0.0076908767 0 0.10408453
		 0 -0.019490782 0.071175314 0.0056816135 0 0.10408455 0 -0.012186635 0.071175285 0.015641272
		 0 0.1040845 0 -0.00044347145 0.071175203 0.019391306 0 0.10408441 0 0.011271691 0.071175203
		 0.015561692 0 0.10408441 0 0.018523296 0.071175203 0.0055991728 0 0.1040845 0 0.018580416
		 0.071175285 -0.0067208596 0 0.1040845 0 0.011371391 0.071175344 -0.016736671 0 0.10408452
		 0 -0.00039546064 0.071175285 -0.020596236 0 0.1040845 0 -0.012214718 0.071175285
		 -0.016767567 0 0.1040845 0 -0.019515961 0.071175285 -0.0067113983 0 0.10408452 0
		 -0.015425322 0.068151042 0.0042034332 0 0.10408446 0 -0.0097203664 0.068151027 0.01199855
		 0 0.10408451 0 -0.00053302426 0.068151072 0.014941104 0 0.10408449 0 0.0086444281
		 0.068151057 0.011953482 0 0.10408449 0 0.01431682 0.068151072 0.0041460735 0 0.10408451
		 0 0.014350731 0.068151027 -0.0054966114 0 0.10408446 0 0.0087069087 0.068151042 -0.01332753
		 0 0.10408448 0 -0.00049576967 0.068151072 -0.016336525 0 0.1040845 0 -0.0097304936
		 0.068151072 -0.013339611 0 0.1040845 0 -0.015436946 0.068151072 -0.0054834308 0 0.1040845
		 0 -0.010814396 0.065936044 0.0025873173 0 0.10408451 0 -0.0069055771 0.065936029
		 0.0079427306 0 0.10408448 0 -0.00059719337 0.065936029 0.0099699628 0 0.10408448
		 0 0.0057045966 0.065936029 0.0079122931 0 0.10408448 0 0.0096061165 0.065936029 0.0025532912
		 0 0.10408448 0 0.0096245604 0.065936029 -0.0040706759 0 0.10408448 0;
	setAttr ".tk[332:360]" 0.0057427771 0.065936044 -0.009441507 0 0.10408451 0
		 -0.0005754517 0.065936044 -0.011499468 0 0.10408451 0 -0.006903722 0.065936029 -0.0094428407
		 0 0.10408451 0 -0.010816371 0.065936044 -0.0040599564 0 0.10408451 0 -0.0058285501
		 0.064584844 0.00089308585 0 0.1040845 0 -0.0038421759 0.064584844 0.0036231363 0
		 0.1040845 0 -0.00063247583 0.064584844 0.0046578785 0 0.1040845 0 0.0025744475 0.064584844
		 0.0036072871 0 0.1040845 0 0.0045632729 0.064584844 0.00088099053 0 0.1040845 0 0.0045728441
		 0.064584844 -0.0024907351 0 0.1040845 0 0.0025898155 0.064584844 -0.0052232342 0
		 0.1040845 0 -0.00062533643 0.064584844 -0.0062686834 0 0.1040845 0 -0.0038383342
		 0.064584844 -0.0052199024 0 0.1040845 0 -0.0058286749 0.064584844 -0.0024882411 0
		 0.1040845 0 -0.00064260256 0.064130738 -0.00081985374;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "9EA3CCD6-C943-AEC3-EDDE-CFBBB1E64322";
	setAttr ".dc" -type "componentList" 1 "f[540]";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "596D66AE-414F-F1B3-6FCC-E3B85BBA6B1D";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E4E8EF0A-334A-AAD6-D267-AF9E30CD8F36";
	setAttr ".ics" -type "componentList" 1 "f[20:29]";
	setAttr ".ix" -type "matrix" 0.81890733173473629 0 0 0 0 0.81890733173473629 0 0
		 0 0 0.81890733173473629 0 0 1.3709984952634495 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.881068e-08 2.1899059 -4.881068e-08 ;
	setAttr ".rs" 562173561;
	setAttr ".ls" -type "double3" 0.73333332693843467 0.73333332693843467 0.71578243208652059 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8189074293560975 2.1899058269981859 -0.7788273199424337 ;
	setAttr ".cbx" -type "double3" 0.81890733173473629 2.1899058269981859 0.77882722232107249 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "B39B07BA-FC44-70D4-07B0-3A8B08B170AC";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[0]" -type "float3" -0.26282611 0.49636018 0.19095433 ;
	setAttr ".tk[1]" -type "float3" -0.10039061 0.49636018 0.30897063 ;
	setAttr ".tk[2]" -type "float3" 0.10039064 0.49636018 0.3089706 ;
	setAttr ".tk[3]" -type "float3" 0.26282611 0.49636018 0.1909543 ;
	setAttr ".tk[4]" -type "float3" 0.32487091 0.49636018 -3.8727634e-08 ;
	setAttr ".tk[5]" -type "float3" 0.26282609 0.49636018 -0.19095436 ;
	setAttr ".tk[6]" -type "float3" 0.10039062 0.49636018 -0.30897063 ;
	setAttr ".tk[7]" -type "float3" -0.10039064 0.49636018 -0.30897063 ;
	setAttr ".tk[8]" -type "float3" -0.26282611 0.49636018 -0.19095431 ;
	setAttr ".tk[9]" -type "float3" -0.32487091 0.49636018 -1.9363817e-08 ;
	setAttr ".tk[20]" -type "float3" -1.9363817e-08 0.49636018 -1.9363817e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "D26C4EEE-584B-7038-AC6A-D6A19002D867";
	setAttr ".ics" -type "componentList" 1 "f[20:29]";
	setAttr ".ix" -type "matrix" 0.81890733173473629 0 0 0 0 0.81890733173473629 0 0
		 0 0 0.81890733173473629 0 0 1.3709984952634495 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.3216022e-08 2.1899061 -4.881068e-08 ;
	setAttr ".rs" 188417693;
	setAttr ".lt" -type "double3" 0 6.1406211680595621e-18 -1.2223451007957036 ;
	setAttr ".ls" -type "double3" 1 1 0.99355899975445783 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.72260771493100506 2.1899060222409084 -0.68724076483723717 ;
	setAttr ".cbx" -type "double3" 0.72260756849896324 2.1899060222409084 0.68724066721587596 ;
createNode polyCube -n "polyCube1";
	rename -uid "9920D2D0-0249-CD32-5CBB-2992251165A3";
	setAttr ".cuv" 4;
createNode polyCut -n "polyCut1";
	rename -uid "4B6A65B3-C94E-2D3E-7EC3-5FA761008A0E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:9]" "f[40:49]";
	setAttr ".ix" -type "matrix" 0.81890733173473629 0 0 0 0 0.81890733173473629 0 0
		 0 0 0.81890733173473629 0 0 1.8490789264506602 0 1;
	setAttr ".pc" -type "double3" -4.5527622599999997 1.72424175 -10.145622960000001 ;
	setAttr ".ro" -type "double3" 179.86957772 -89.709795529999994 -90 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "51F38270-654E-6C25-92AB-23A18746C89A";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[31]" -type "float3" -0.18984938 -1.110223e-16 0.13793358 ;
	setAttr ".tk[32]" -type "float3" -0.072516024 -1.110223e-16 0.22318132 ;
	setAttr ".tk[33]" -type "float3" -3.1702509e-08 -1.110223e-16 -2.4210101e-08 ;
	setAttr ".tk[34]" -type "float3" 0.072515994 -1.110223e-16 0.22318123 ;
	setAttr ".tk[35]" -type "float3" 0.18984936 -1.110223e-16 0.13793354 ;
	setAttr ".tk[36]" -type "float3" 0.23466681 -1.110223e-16 -5.4750501e-08 ;
	setAttr ".tk[37]" -type "float3" 0.18984938 -1.110223e-16 -0.1379337 ;
	setAttr ".tk[38]" -type "float3" 0.07251595 -1.110223e-16 -0.22318132 ;
	setAttr ".tk[39]" -type "float3" -0.072516046 -1.110223e-16 -0.22318114 ;
	setAttr ".tk[40]" -type "float3" -0.18984936 -1.110223e-16 -0.13793352 ;
	setAttr ".tk[41]" -type "float3" -0.23466681 -1.110223e-16 -3.7813482e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4609C776-874F-01E1-68F0-85BF7D3071BD";
	setAttr ".ics" -type "componentList" 1 "f[30:39]";
	setAttr ".ix" -type "matrix" 0.81890733173473629 0 0 0 0 0.81890733173473629 0 0
		 0 0 0.81890733173473629 0 0 1.8490789264506602 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.881068e-08 2.6679866 -4.881068e-08 ;
	setAttr ".rs" 93249066;
	setAttr ".lt" -type "double3" 1.1102230246251565e-16 6.3338443730491908e-18 0.071494121185915124 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8189074293560975 2.6679866486708415 -0.7788273199424337 ;
	setAttr ".cbx" -type "double3" 0.81890733173473629 2.6679866486708415 0.77882722232107249 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "40216410-9F4B-C475-F1D5-9D8755CA9336";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[1]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[7]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[8]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[9]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[31]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[32]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[39]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[40]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[41]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[42]" -type "float3" 0.21084583 0.0002940608 -0.15283751 ;
	setAttr ".tk[43]" -type "float3" 0.08066687 0.0010704489 -0.24761523 ;
	setAttr ".tk[44]" -type "float3" -0.080435358 0.0014376029 -0.24769051 ;
	setAttr ".tk[45]" -type "float3" -0.21075752 0.0012544059 -0.15295942 ;
	setAttr ".tk[46]" -type "float3" -0.26039746 0.00059133267 0.00025784128 ;
	setAttr ".tk[47]" -type "float3" -0.21048628 -0.00029727176 0.15327814 ;
	setAttr ".tk[48]" -type "float3" -0.080267712 -0.0010720545 0.24769051 ;
	setAttr ".tk[49]" -type "float3" 0.08049944 -0.0014376029 0.24761555 ;
	setAttr ".tk[50]" -type "float3" 0.21057492 -0.0012552508 0.15315637 ;
	setAttr ".tk[51]" -type "float3" 0.26039746 -0.00059420569 0.00025782574 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "EA17BF6D-114F-3C20-CAC2-B89CD49C5516";
	setAttr ".ics" -type "componentList" 10 "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]";
	setAttr ".ix" -type "matrix" 0.81890733173473629 0 0 0 0 0.81890733173473629 0 0
		 0 0 0.81890733173473629 0 0 1.8490789264506602 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.881068e-08 2.7037337 -4.881068e-08 ;
	setAttr ".rs" 1549006180;
	setAttr ".lt" -type "double3" -4.163336342344337e-17 2.428473172105682e-16 0.070102148936719177 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8189074293560975 2.6679866486708415 -0.7788273199424337 ;
	setAttr ".cbx" -type "double3" 0.81890733173473629 2.7394808240195898 0.77882722232107249 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "3BB95923-B54B-A5F5-DAE8-E5A017CD82C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "5F01E5AF-4743-09F3-B355-6582744D8F8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak6";
	rename -uid "87922731-414D-875F-B580-62A3A8B99DDD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.456083 -0.24115068 -1.049919605
		 -0.456083 -0.24115068 -1.049919605 3.0062122345 31.19767761 -6.072746754 3.0062122345
		 31.19767761 -6.072746754 3.0062122345 31.19767761 -6.072746754 3.0062122345 31.19767761
		 -6.072746754 -0.456083 -0.24115068 -1.049919605 -0.456083 -0.24115068 -1.049919605;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "ADFDC16C-914F-B6EA-BF4C-7E92EF955106";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "92B45C34-DE4B-B873-EAB3-7AB24022F383";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "B5E27B3F-0046-6D61-2316-12AE25A0043C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge6";
	rename -uid "A99482B3-3342-25DF-1B03-07A7FE06AB23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge7";
	rename -uid "F0F53733-CA43-87D5-87D9-4F84000FA12A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge8";
	rename -uid "7004959B-A546-005A-87D7-608D8FC568C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge9";
	rename -uid "D18636B1-C641-5170-A45D-53830AFB054B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "F6000848-7740-D3EF-767D-818F3740617C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.038178521391754858 0 0 0 0 0.038178521391754858 0 0
		 0 0 0.044499762324434131 0 0.24071061744911137 2.6962826685174135 0.73396176880449193 1;
	setAttr ".a" 180;
createNode shadingEngine -n "standardSurface12SG";
	rename -uid "9835CFD1-4448-1177-9D61-65950246C01E";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "02B41E47-2949-E39C-D002-7093B1BCDDD4";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "91CEEA93-F947-74E4-2F6A-639D90726CF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[188]" "e[195]" "e[202]" "e[209]" "e[216]" "e[223]" "e[230]" "e[237]" "e[244]" "e[251]";
	setAttr ".ix" -type "matrix" 4.6467296518520564 0 0 0 0 4.6467296518520564 0 0 0 0 4.6467296518520564 0
		 0.58835166501400704 4.2405227575086739 0.6898208984798031 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0051276828 3.9107878 -0.051176656 ;
	setAttr ".rs" 670776819;
	setAttr ".lt" -type "double3" -2.6367796834847468e-16 0.074961108891863942 0.03351391952275657 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.59846118029224993 3.9064531417965243 -0.68374849533673432 ;
	setAttr ".cbx" -type "double3" 0.60871654607839321 3.9151226832675201 0.58139518082286767 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "8DC33CC1-B247-385E-F281-F5AF9157DC13";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[538]" -type "float3" -0.071870938 -1.6906113e-05 0.023442587 ;
	setAttr ".tk[539]" -type "float3" -0.044475999 -9.1652937e-06 0.061242573 ;
	setAttr ".tk[540]" -type "float3" -6.8636255e-05 -7.413857e-06 0.075580925 ;
	setAttr ".tk[541]" -type "float3" 0.044485379 1.6906113e-05 0.061278112 ;
	setAttr ".tk[542]" -type "float3" 0.07186994 -4.5446545e-06 0.023321537 ;
	setAttr ".tk[543]" -type "float3" 0.071946077 -9.440816e-06 -0.023344094 ;
	setAttr ".tk[544]" -type "float3" 0.044461705 -1.6378086e-05 -0.061080374 ;
	setAttr ".tk[545]" -type "float3" 2.9982293e-05 -1.2044319e-05 -0.075580932 ;
	setAttr ".tk[546]" -type "float3" -0.044565663 1.1072573e-05 -0.061300579 ;
	setAttr ".tk[547]" -type "float3" -0.071946077 -1.0389242e-05 -0.02330601 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "6F49CB34-C945-03E4-50CD-DDA4D165D882";
	setAttr ".ics" -type "componentList" 1 "f[540:549]";
	setAttr ".ix" -type "matrix" 4.6467296518520564 0 0 0 0 4.6467296518520564 0 0 0 0 4.6467296518520564 0
		 0.58835166501400704 4.2405227575086739 0.6898208984798031 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0052358005 3.8717434 -0.051111508 ;
	setAttr ".rs" 1197018237;
	setAttr ".lt" -type "double3" 2.7061686225238191e-16 4.9092674370143641e-16 0.025218520668667394 ;
	setAttr ".ls" -type "double3" 1.1000000020753611 1.1000000020753611 1.0343935274703242 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.62350810718440752 3.8283642240192393 -0.70799734276852067 ;
	setAttr ".cbx" -type "double3" 0.6339797082069546 3.9151226486466864 0.60577432376259732 ;
createNode shadingEngine -n "standardSurface13SG";
	rename -uid "1F348FEE-D240-434C-0169-F8A572A76A44";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "916AE04C-A243-2DC5-E5C6-7F815CD7877B";
createNode lambert -n "lambert2";
	rename -uid "EC038447-0E42-7F29-6C8B-77982A916A22";
	setAttr ".c" -type "float3" 1 0.81529999 0 ;
createNode lambert -n "lambert3";
	rename -uid "8D889C2A-DE49-7446-B57A-339B509CA1E6";
	setAttr ".c" -type "float3" 0.68400002 0 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert4";
	rename -uid "F7B952CE-4B4C-30C8-3AA2-788B7C1FEF66";
	setAttr ".c" -type "float3" 0.68400002 0 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert5";
	rename -uid "31B8C9C3-E544-BB05-FAEA-909085528AE7";
	setAttr ".c" -type "float3" 0 0 1 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert6";
	rename -uid "DCF46124-CB40-BB16-D616-73B6E6CE82FB";
	setAttr ".c" -type "float3" 0.025925951 0.63700002 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert7";
	rename -uid "44DA8B0D-E54F-1F00-9B61-6B8D040705A2";
	setAttr ".c" -type "float3" 0 0 1 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert8";
	rename -uid "4C0406F1-C643-0598-3477-E8AB68175B59";
	setAttr ".c" -type "float3" 0.60699999 0.2919063 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert9";
	rename -uid "3FD490EB-694D-67F2-615A-3CADB177678B";
	setAttr ".c" -type "float3" 0.60699999 0.2919063 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert10";
	rename -uid "37BBF36E-6E49-2147-A732-C0AA1454A2A9";
	setAttr ".c" -type "float3" 0.025925951 0.63700002 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert11";
	rename -uid "E83906E6-A940-881B-2ED9-FC86F1B4717F";
	setAttr ".c" -type "float3" 1 0.81529999 0 ;
	setAttr ".gi" 1;
createNode lambert -n "lambert12";
	rename -uid "CBCC1B49-5C4C-CD50-7059-B48EFEAA491C";
	setAttr ".c" -type "float3" 0.176 0.12059047 0.052271999 ;
createNode lambert -n "lambert13";
	rename -uid "299A4EA3-BF4B-D31C-991A-7894CDC4E459";
	setAttr ".c" -type "float3" 0.50199997 0.35160053 0.16616197 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 17 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pSphereShape1.iog.og[17].gid";
connectAttr "standardSurface11SG.mwc" "pSphereShape1.iog.og[17].gco";
connectAttr "groupId3.id" "pSphereShape1.iog.og[18].gid";
connectAttr "standardSurface2SG.mwc" "pSphereShape1.iog.og[18].gco";
connectAttr "groupId4.id" "pSphereShape1.iog.og[19].gid";
connectAttr "standardSurface3SG.mwc" "pSphereShape1.iog.og[19].gco";
connectAttr "groupId5.id" "pSphereShape1.iog.og[20].gid";
connectAttr "standardSurface4SG.mwc" "pSphereShape1.iog.og[20].gco";
connectAttr "groupId6.id" "pSphereShape1.iog.og[21].gid";
connectAttr "standardSurface5SG.mwc" "pSphereShape1.iog.og[21].gco";
connectAttr "groupId7.id" "pSphereShape1.iog.og[22].gid";
connectAttr "standardSurface6SG.mwc" "pSphereShape1.iog.og[22].gco";
connectAttr "groupId8.id" "pSphereShape1.iog.og[23].gid";
connectAttr "standardSurface7SG.mwc" "pSphereShape1.iog.og[23].gco";
connectAttr "groupId9.id" "pSphereShape1.iog.og[24].gid";
connectAttr "standardSurface8SG.mwc" "pSphereShape1.iog.og[24].gco";
connectAttr "groupId10.id" "pSphereShape1.iog.og[25].gid";
connectAttr "standardSurface9SG.mwc" "pSphereShape1.iog.og[25].gco";
connectAttr "groupId11.id" "pSphereShape1.iog.og[26].gid";
connectAttr "standardSurface10SG.mwc" "pSphereShape1.iog.og[26].gco";
connectAttr "polyExtrudeFace5.out" "pSphereShape1.i";
connectAttr "groupId2.id" "pSphereShape1.ciog.cog[1].cgid";
connectAttr "polyExtrudeFace4.out" "pCylinderShape1.i";
connectAttr "polySoftEdge2.out" "pCubeShape1.i";
connectAttr "polySoftEdge9.out" "pCubeShape2.i";
connectAttr "polySoftEdge7.out" "pCubeShape3.i";
connectAttr "polySoftEdge10.out" "pCubeShape4.i";
connectAttr "polySoftEdge3.out" "pCubeShape5.i";
connectAttr "polySoftEdge4.out" "pCubeShape6.i";
connectAttr "polySoftEdge6.out" "pCubeShape7.i";
connectAttr "polySoftEdge5.out" "pCubeShape8.i";
connectAttr "polySoftEdge1.out" "pCubeShape9.i";
connectAttr "polySoftEdge8.out" "pCubeShape10.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface13SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "lambert4.oc" "standardSurface2SG.ss";
connectAttr "groupId3.msg" "standardSurface2SG.gn" -na;
connectAttr "pSphereShape1.iog.og[18]" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "lambert4.msg" "materialInfo1.m";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "lambert9.oc" "standardSurface3SG.ss";
connectAttr "groupId4.msg" "standardSurface3SG.gn" -na;
connectAttr "pSphereShape1.iog.og[19]" "standardSurface3SG.dsm" -na;
connectAttr "standardSurface3SG.msg" "materialInfo2.sg";
connectAttr "lambert9.msg" "materialInfo2.m";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "lambert11.oc" "standardSurface4SG.ss";
connectAttr "groupId5.msg" "standardSurface4SG.gn" -na;
connectAttr "pSphereShape1.iog.og[20]" "standardSurface4SG.dsm" -na;
connectAttr "standardSurface4SG.msg" "materialInfo3.sg";
connectAttr "lambert11.msg" "materialInfo3.m";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "lambert6.oc" "standardSurface5SG.ss";
connectAttr "groupId6.msg" "standardSurface5SG.gn" -na;
connectAttr "pSphereShape1.iog.og[21]" "standardSurface5SG.dsm" -na;
connectAttr "standardSurface5SG.msg" "materialInfo4.sg";
connectAttr "lambert6.msg" "materialInfo4.m";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "lambert7.oc" "standardSurface6SG.ss";
connectAttr "groupId7.msg" "standardSurface6SG.gn" -na;
connectAttr "pSphereShape1.iog.og[22]" "standardSurface6SG.dsm" -na;
connectAttr "standardSurface6SG.msg" "materialInfo5.sg";
connectAttr "lambert7.msg" "materialInfo5.m";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "lambert3.oc" "standardSurface7SG.ss";
connectAttr "groupId8.msg" "standardSurface7SG.gn" -na;
connectAttr "pSphereShape1.iog.og[23]" "standardSurface7SG.dsm" -na;
connectAttr "standardSurface7SG.msg" "materialInfo6.sg";
connectAttr "lambert3.msg" "materialInfo6.m";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "lambert8.oc" "standardSurface8SG.ss";
connectAttr "groupId9.msg" "standardSurface8SG.gn" -na;
connectAttr "pSphereShape1.iog.og[24]" "standardSurface8SG.dsm" -na;
connectAttr "standardSurface8SG.msg" "materialInfo7.sg";
connectAttr "lambert8.msg" "materialInfo7.m";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "lambert2.oc" "standardSurface9SG.ss";
connectAttr "groupId10.msg" "standardSurface9SG.gn" -na;
connectAttr "pSphereShape1.iog.og[25]" "standardSurface9SG.dsm" -na;
connectAttr "standardSurface9SG.msg" "materialInfo8.sg";
connectAttr "lambert2.msg" "materialInfo8.m";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId10.id" "groupParts9.gi";
connectAttr "lambert10.oc" "standardSurface10SG.ss";
connectAttr "groupId11.msg" "standardSurface10SG.gn" -na;
connectAttr "pSphereShape1.iog.og[26]" "standardSurface10SG.dsm" -na;
connectAttr "standardSurface10SG.msg" "materialInfo9.sg";
connectAttr "lambert10.msg" "materialInfo9.m";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId11.id" "groupParts10.gi";
connectAttr "lambert5.oc" "standardSurface11SG.ss";
connectAttr "pSphereShape1.iog.og[17]" "standardSurface11SG.dsm" -na;
connectAttr "groupId1.msg" "standardSurface11SG.gn" -na;
connectAttr "standardSurface11SG.msg" "materialInfo10.sg";
connectAttr "lambert5.msg" "materialInfo10.m";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "pSphereShape1.wm" "polyBevel1.mp";
connectAttr "groupParts10.og" "polyTweak2.ip";
connectAttr "polyBevel1.out" "deleteComponent2.ig";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak4.out" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyCut1.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySurfaceShape1.o" "polySoftEdge1.ip";
connectAttr "pCubeShape9.wm" "polySoftEdge1.mp";
connectAttr "polyTweak6.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polyCube1.out" "polyTweak6.ip";
connectAttr "polySurfaceShape2.o" "polySoftEdge3.ip";
connectAttr "pCubeShape5.wm" "polySoftEdge3.mp";
connectAttr "polySurfaceShape3.o" "polySoftEdge4.ip";
connectAttr "pCubeShape6.wm" "polySoftEdge4.mp";
connectAttr "polySurfaceShape4.o" "polySoftEdge5.ip";
connectAttr "pCubeShape8.wm" "polySoftEdge5.mp";
connectAttr "polySurfaceShape5.o" "polySoftEdge6.ip";
connectAttr "pCubeShape7.wm" "polySoftEdge6.mp";
connectAttr "polySurfaceShape6.o" "polySoftEdge7.ip";
connectAttr "pCubeShape3.wm" "polySoftEdge7.mp";
connectAttr "polySurfaceShape7.o" "polySoftEdge8.ip";
connectAttr "pCubeShape10.wm" "polySoftEdge8.mp";
connectAttr "polySurfaceShape8.o" "polySoftEdge9.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge9.mp";
connectAttr "polySurfaceShape9.o" "polySoftEdge10.ip";
connectAttr "pCubeShape4.wm" "polySoftEdge10.mp";
connectAttr "lambert12.oc" "standardSurface12SG.ss";
connectAttr "pCubeShape4.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape2.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape10.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape3.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape7.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape8.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape6.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape5.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape1.iog" "standardSurface12SG.dsm" -na;
connectAttr "pCubeShape9.iog" "standardSurface12SG.dsm" -na;
connectAttr "standardSurface12SG.msg" "materialInfo11.sg";
connectAttr "lambert12.msg" "materialInfo11.m";
connectAttr "polyTweak7.out" "polyExtrudeEdge1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent2.og" "polyTweak7.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "lambert13.oc" "standardSurface13SG.ss";
connectAttr "pCylinderShape1.iog" "standardSurface13SG.dsm" -na;
connectAttr "standardSurface13SG.msg" "materialInfo12.sg";
connectAttr "lambert13.msg" "materialInfo12.m";
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface11SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface12SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert13.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of finalballoon.ma
