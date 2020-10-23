--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.activities (
    parks_id integer NOT NULL,
    activity character varying
);


ALTER TABLE public.activities OWNER TO alishahwee;

--
-- Name: images; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.images (
    parks_id integer NOT NULL,
    url character varying
);


ALTER TABLE public.images OWNER TO alishahwee;

--
-- Name: parks; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.parks (
    id integer NOT NULL,
    name character varying NOT NULL,
    address character varying,
    coordinates character varying NOT NULL,
    url character varying NOT NULL
);


ALTER TABLE public.parks OWNER TO alishahwee;

--
-- Name: parks_id_seq; Type: SEQUENCE; Schema: public; Owner: alishahwee
--

CREATE SEQUENCE public.parks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parks_id_seq OWNER TO alishahwee;

--
-- Name: parks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alishahwee
--

ALTER SEQUENCE public.parks_id_seq OWNED BY public.parks.id;


--
-- Name: parks id; Type: DEFAULT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.parks ALTER COLUMN id SET DEFAULT nextval('public.parks_id_seq'::regclass);


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.activities (parks_id, activity) FROM stdin;
1	Backpack Camping
1	Fishing 
1	Swimming
1	Prairie Landscape
1	Hiking
1	Cross-Country Skiing
2	Kettle River
2	Canoeing
2	Historic Sandstone Quarry
2	Wolf Creek Falls
2	Hiking
2	Kayaking
3	Camping
3	Fishing
3	Great Hiking Trails
3	Wilderness Atmosphere
3	Wildlife
3	23 Miles of Lakeshore
4	Camping
4	Trout Fishing
4	Hiking
4	Bird Watching
4	Spring Woodland Flowers
4	The "Big Spring"
5	Lakeside Campsites
5	Fishing
5	Bird Watching
5	Native Prairie/Oak Savanna in Scientific and Natural Area
5	Wildflowers Spring/Summer
6	Camping
6	Hiking
6	Rock Climbing
6	Wildlife
6	Bison Herd
6	Prairie Wildflowers / Grasses
7	Swimming Beach 
7	Great Picnicking
7	Camping
7	Fishing
7	Native Prairie Landscape
8	Camping
8	Fishing
8	Fall Colors
8	Dakota Overlook
8	Wildflowers
8	Native and Restored Prairies
9	Camping
9	Fishing/Trout Stream
9	Spring Wildflowers
9	Hiking
9	White Pine Stands
9	Bluebells in May
10	Hiking
10	Camping
10	Skiing
10	Waterfalls
10	Fishing
10	Scenic areas along river and lake
11	Camping
11	Historic Site
11	Picnicking
11	Spring Wildflowers
11	Mississippi River
11	Great Family Reunion Park
12	Camping
12	Fishing
12	Scenic Hiking Trails
12	Historic Sites
12	Canoeing/Mississippi River
12	Great Wildlife Observation Opportunities
13	Camping
13	Fishing
13	Wheelchair Accessible Fishing Piers
13	Sandy Beach
13	Home of Several Albino Deer
14	Shaded Campsites
14	Sand-bottom Swimming Pool
14	Enclosed Picnic Shelter
14	Scenic Overlooks
14	Hiking/Cross-Country Skiing
14	Modern Group Center
15	Tours of Mystery Cave
15	Historic Forestville Tours
15	Trout Streams
15	Camping
15	Great Hiking/Horseback Trails
15	Spring Flowers
16	Camping
16	Historic Site
16	Horseback Riding
16	Scenic Rolling Hills
16	Forests and Prairies
17	Fishing
17	Hiking
17	Dakota Memorial
17	Interpretive Exhibits
17	Bike Trails/Connections
17	Cross-Country Skiing
18	Great Fishing
18	Hiking
18	Quiet
18	Peaceful Park
18	Scenic Hiking Trails
19	Camping
19	Wonderful Fall Colors 
19	Excellent Birding Opportunities
19	Wildflowers in Spring Through Fall
19	Winter Sliding Hill
19	Great Hiking/Ski Trails
20	Camping
20	Hiking
20	Scenic views
20	Waterfalls
20	Wildlife
21	Camping
21	Fishing
22	Cart-in Tent Camping
22	Hiking and Biking
22	Wildlife Observation
22	Heritage Fishing/Large Panfish
22	Canoeing on Chain of Lakes
22	Sandy Swimming Beach
23	Scenic Waterfalls/Lake Superior Shoreline
23	Visitor Center/Nature Store
23	Historic CCC Log & Stone Structures
23	Year-Round Naturalist
23	Multi-Use/Accessible Trails
23	Gateway Plaza
24	Minnesota's Highest Waterfall
24	Hiking
24	Scenic Views
24	Picnicking
24	Spring/Summer Wildflowers
25	Scenic Blufftop Views of Mississippi River Valley
25	Fall Colors
25	Goat Prairies
25	 Prairie Plants/Flowers
25	Camping/Hiking/Picnicking
25	Birdwatching
26	Scenic Views: Grefthen Bay Overlook
26	Hayes Dam Area
26	New Bog Boardwalk
26	History Trail
26	Great Wildlife Observation
26	Timberwolves
27	Tours of Mine/Facilities
27	Historic Site
27	Clubhouse Museum
27	Scenic Overlook
27	Picnicking
27	Fossil Hunt
28	Scenic River Views
28	Canoeing
28	Camping
28	Fishing
28	Rock Climbing
28	Pothole Viewing
29	Camping
29	Fishing
29	Hiking
29	Historic Sites
29	Unique Ecosystem
29	 Old Growth
30	Camping
30	Hiking
30	Swinging Bridge
30	Pioneer Cemetery
30	Thomson Dam
30	Oldenburg Point
31	Scenic Views
32	Scenic Waterfalls
32	Trout Fishing
32	Camping
32	Hiking/Picnicking
32	Wildlife Observation
32	Superior Hiking Trail
33	Peaceful/Quiet Park
33	Birdwatching
33	Hiking
33	Camping
33	Spring Wildflowers
34	Camping
34	Fishing
34	Bird Watching/Winter Eagle Sightings
34	Hunting
34	Canoeing
34	Cross-country Skiing
35	Camping
35	Fishing
35	Unique Ecosystem
35	Bog Walk
35	Eagle/Osprey Viewing
35	Lake Recreation
36	Largest Observation/Water Tower in MN State Park System
36	Historic WPA-Built Structures
36	Playground
36	Excellent Prairie & Aspen Parkland Habitat
36	Camping/Hiking 
36	Visitor Center
37	Camping
37	Fishing on Chain of Lakes
37	Birdwatching
37	Hiking Through Rolling Hills
37	Swimming/Boating
37	Water Recreation
38	Quiet Park
38	Seasonal Wildflowers
38	Peaceful Campgrounds
38	Canoeing on Lake Louise
38	Swimming Beach
38	Horse Trails Through Varied Habitat
39	Secluded Backpack Campsites
39	Endangered Blandings Turtle
39	Hiking/Spring Wildflowers/Fall Colors
39	Nesting Osprey and Eagles 
39	Remote Ski-in/Walk-in Camper Cabins
39	Cross-Country Skiing
40	Camping
40	Fishing
40	Bicycle Trail 
40	Shetek Monument and Koch Cabin
41	Mine Tours and Hiking
41	Campground and Day Use Areas
41	Historic Site
41	Lake Recreation and Public Water Access
41	Geologic Formations
41	Birding and Wildlife Watching
42	Swimming Beach
42	Camping
42	Hiking
42	Horse Trails
42	Picnicking
42	Snowshoeing/snowmobiling
43	Camping
43	Fishing
43	Hiking
43	Horseback Trails
44	Nature Programs
44	Camping
44	Swimming/Playground
44	100 Ft. Observation Tower
44	Historic Sites
44	Cross-Country Skiing
45	Camping
45	Fishing
45	Bison herd
46	Camping
46	Fishing
47	Close Access To Recreation
47	Quiet Lake Offers Great Canoeing
47	Lots Of Family Activity Choices
47	Fishing/Fishing Pier
47	Wildflowers & Wildlife Viewing
48	Spring and Fall Migrations
48	Glacial Esker
48	Great Marsh/Birdwatching
48	Hiking
48	Canoeing
48	Camping
49	"Big Woods" Landscape
49	Spectacular Spring Wildflowers
49	Fabulous Fall Color
49	Visitor Center
49	Self-guided Interpretive Trail
49	Hidden Falls Waterfall
50	Camping
50	Wildlife
50	Historic Site
51	Spring and Fall Migration
51	Birdwatching
51	Great Variety of Songbirds/Waterfowl
51	Wildflowers
51	Canoeing
51	Nature Observation
52	Camping
52	Extensive Trail System
52	CCC Construction Buildings
52	Two Scenic Rivers Offer Excellent Canoeing
52	Birding/Wildlife Observation
52	Firetower
53	Maple and Basswood Forests
53	Hiking
53	Biking - Access to Sakatah State Trail
53	Camping
53	Wildlife
54	Hiking Trails
54	Swimming Beach
54	Fishing
54	Continental Divide
54	Snowmobiling
54	Historic Areas in Park
55	Camping
55	Hiking
55	Virgin Pines
55	Peaceful Setting
55	Fishing/Canoeing
55	Historic CCC Buildings
56	Camping
56	Hiking
56	Canoeing
56	Picnicking
56	Fishing 
56	Quiet Park/Great Relaxation
57	Interpretive Programs
57	Bird Watching
57	Camping
57	Fishing/Canoeing
57	Hiking
57	Cross-Country Skiing
58	Camping
58	Water Based Recreation / Swimming Beach
58	Fishing
58	Wildlife/Waterfowl Observation
58	Hiking
58	Horse riding trails
59	Tent Camping/Cart-in Sites
59	Historic Lighthouse / History Center Tours
59	Picnicking Along Lake Superior Lakeshore
59	Scenic Views of Lake Superior
59	Waterfalls
60	Rock Climbing
60	Fishing
60	Hiking
60	Camping
60	Many Scenic Areas Along River and Lake
60	Rocky Landscape
61	Waterfalls
61	Wildlife/Peregrine Falcons
61	Hiking
61	Camping
61	Rock Climbing
61	Cross-Country Skiing
62	Camping Including Tipi Sites
62	Historic Site
62	Horse Trails/Camp
62	Varied Landscape/Hiking Trails
62	Birdwatching
63	Rugged Hiking Trails to Scenic Bluffland
63	Noticeable Lack of Mosquitoes
63	Excellent Trout Fishing summer and winter
63	Year-round Interpretive Programs
63	Visitor Center
63	Spectacular Spring Wildflowers
64	Camping
64	Canoeing
64	Cross-Country Skiing
64	McElroy Visitor Center
64	Nevers Dam Overlook
64	Wildlife/Wildflowers
65	Camping/Fishing
65	Canoeing on the St. Croix
65	Cross-country Skiing
65	Naturalist Programs
65	Bird Watching
65	Oak Savanna Restoration
66	Camping
66	Fishing
66	Beach
66	Bird Watching
66	Winter Recreation
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.images (parks_id, url) FROM stdin;
1	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00100.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_001.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_002.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_003.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_004.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_005.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_006.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00103.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_001.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_002.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_003.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_004.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_005.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_006.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00109.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_1.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_2.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_3.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_4.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_5.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_6.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00112.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_001.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_002.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_003.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_004.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_005.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_006.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00115.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_001.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_002.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_003.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_004.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_005.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_006.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00121.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_001.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_002.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_003.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_004.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_005.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_006.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00124.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_001.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_002.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_003.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_004.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_005.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_006.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00127.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_001.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_002.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/camden_redwood_exterior.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_004.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_005.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_006.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00130.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_001.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_002.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_003.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_004.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_005.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_006.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00133.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_001.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_002.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_003.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_004.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_005.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_006.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00136.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_001.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_002.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_003.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_004.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_005.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_006.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00139.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_001.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_002.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_003.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_004.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_005.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_006.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00142.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_012.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_010.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_011.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_001.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_003.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_006.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00145.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_001.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_002.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_003.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_004.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_005.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_006.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00148.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_001.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_002.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_003.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_004.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_005.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_006.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00151.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_011.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_001.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_010.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_007.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_003.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00151_012.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00154.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_008.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_001.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_007.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_005.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_002.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_003.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00157.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_1.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_2.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_3.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_4.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_5.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_6.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00160.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_001.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_002.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_003.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_004.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_005.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_006.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00163.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_001.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_002.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_003.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_004.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_005.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_006.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00166.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_001.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_002.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_003.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_004.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_005.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_006.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00167.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_007.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_008.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_009.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_010.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_011.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_012.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00172.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_001.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_002.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_003.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_004.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_005.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_006.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00173.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_001.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_002.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_003.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_004.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_005.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_006.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00244.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_001.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_002.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_003.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_004.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_005.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_006.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00174.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_001.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_002.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_003.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_004.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_005.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_006.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00176.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_001.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_002.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_003.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_004.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_005.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_006.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00178.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_001.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_002.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_003.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_004.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_005.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_006.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00181.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_001a.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_010.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_009.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_003.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_004.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_005.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00187.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_001.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_002.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_003.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_004.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_005.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_006.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00177.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_001.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_002.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_003.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_004.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_005.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_006.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00193.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_001.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_002.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_003.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_004.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_005.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_006.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00196.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_001.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_002.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_003.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_004.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_005.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00196_006.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00197.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_001.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_002.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_003.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_004.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_005.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_006.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00205.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_007.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_001.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_008.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_002.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_003.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00205_004.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00208.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_001.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_002.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_003.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_004.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_005.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_006.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00211.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_pelicans.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_campercabin.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_marshmarigold.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_turtle.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_fawn.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_fishing.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00214.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_001.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_002.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_003.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_004.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_005.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_006.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00217.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_001.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_002.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_003.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_004.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_005.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_006.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00220.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_001.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_002.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_003.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_004.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_005.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_006.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00285.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_001.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_002.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_003.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_004.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_005.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00285_006.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00226.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_002.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_003.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_004.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_005.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_006.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00229.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_007.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_001.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_002.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_003.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_004.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_005.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00232.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_001.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_002.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_003.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_004.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_005.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_006.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00235.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_007.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_001.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_002.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_003.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_004.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_005.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00238.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_001.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_002.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_003.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_004.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_005.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_006.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00239.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_001.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_002.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_003.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_004.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_005.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00239_006.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00175.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_001.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_002.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_003.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_004.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_005.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_006.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00241.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_001.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_002.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_003.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_004.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_005.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_006.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00247.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_001.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_002.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_003.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_004.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_005.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_006.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00250.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_001.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_002.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_003.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_004.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_005.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_006.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00253.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_001.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_002.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_003.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_004.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_005.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_006.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00256.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_001.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_002.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_003.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_004.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_005.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_006.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00259.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_001.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_002.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_003.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_004.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_005.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_006.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00262.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_001.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_002.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_003.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_004.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_005.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_006.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00263.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_001.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_002.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_003.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_004.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_005.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00263_006.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00265.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_001.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_002.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_003.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_004.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_005.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_006.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00267.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_001.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_002.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_003.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_004.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_005.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_006.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00266.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_001.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_002.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_003.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_004.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_005.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_006.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00268.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_001.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_002.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_003.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_004.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_005.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_006.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00269.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_8.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_1.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_2.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_3.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_4.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_5.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00277.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_001.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_002.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_003.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_004.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_005.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_006.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00280.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_001.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_002.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_003.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_004.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_005.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_006.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00254.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_001.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_002.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_003.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_004.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_005.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_006.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00283.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_001.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_002.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_003.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_004.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_005.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_006.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00284.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_1.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_2.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_3.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_4.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_5.jpg
66	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_6.jpg
\.


--
-- Data for Name: parks; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.parks (id, name, address, coordinates, url) FROM stdin;
1	Afton State Park	6959 Peller Avenue South, Hastings, MN 55033	44.847822,-92.797608	https://www.dnr.state.mn.us/state_parks/afton/index.html
3	Bear Head Lake State Park	9301 Bear Head State Park Road, Ely, MN 55731	47.819641,-92.047706	https://www.dnr.state.mn.us/state_parks/bear_head_lake/index.html
4	Beaver Creek Valley State Park	15954 County 1, Caledonia, MN 55921	43.645962,-91.555023	https://www.dnr.state.mn.us/state_parks/beaver_creek_valley/index.html
5	Big Stone Lake State Park	35889 Meadowbrook State Park Road, Ortonville, MN 56278	45.391608,-96.53036	https://www.dnr.state.mn.us/state_parks/big_stone_lake/index.html
6	Blue Mounds State Park	1410 161st Street, Luverne, MN 56156	43.7177,-96.192638	https://www.dnr.state.mn.us/state_parks/blue_mounds/index.html
7	Buffalo River State Park	565 155th Street South, Glyndon, MN 56547	46.872839,-96.474624	https://www.dnr.state.mn.us/state_parks/buffalo_river/index.html
8	Camden State Park	1897 Camden Park Road, Lynd, MN 56157	44.355699,-95.918122	https://www.dnr.state.mn.us/state_parks/camden/index.html
10	Cascade River State Park	3481 West Highway 61, Lutsen, MN 55612	47.710959,-90.505919	https://www.dnr.state.mn.us/state_parks/cascade_river/index.html
11	Charles A. Lindbergh State Park	1615 Lindbergh Drive South, Little Falls, MN 56345	45.958857,-94.388152	https://www.dnr.state.mn.us/state_parks/charles_a_lindbergh/index.html
12	Crow Wing State Park	3124 State Park Road, Brainerd, MN 56401	46.264153,-94.318974	https://www.dnr.state.mn.us/state_parks/crow_wing/index.html
14	Flandrau State Park	1300 Summit Avenue, New Ulm, MN 56073	44.294231,-94.459411	https://www.dnr.state.mn.us/state_parks/flandrau/index.html
15	Forestville Mystery Cave State Park	21071 County 118, Preston, MN 55965	43.633664,-92.230635	https://www.dnr.state.mn.us/state_parks/forestville_mystery_cave/index.html
16	Fort Ridgely State Park	72158 County Road 30, Fairfax, MN 55332	44.447905,-94.726687	https://www.dnr.state.mn.us/state_parks/fort_ridgely/index.html
17	Fort Snelling State Park	101 Snelling Lake Road, St. Paul, MN 55111	44.871366,-93.195991	https://www.dnr.state.mn.us/state_parks/fort_snelling/index.html
18	Franz Jevne State Park	State Highway 11, Birchdale, MN 56629	48.641689,-94.058496	https://www.dnr.state.mn.us/state_parks/franz_jevne/index.html
19	Frontenac State Park	29223 County 28 Boulevard, Frontenac, MN 55026	44.521833,-92.343275	https://www.dnr.state.mn.us/state_parks/frontenac/index.html
21	Glacial Lakes State Park	25022 County Road 41, Starbuck, MN 56381	45.54167,-95.533468	https://www.dnr.state.mn.us/state_parks/glacial_lakes/index.html
22	Glendalough State Park	24869 Whitetail Lane, Battle Lake, MN 56515	46.311447,-95.67996	https://www.dnr.state.mn.us/state_parks/glendalough/index.html
23	Gooseberry Falls State Park	3206 Highway 61 East, Two Harbors, MN 55616	47.13986,-91.47335	https://www.dnr.state.mn.us/state_parks/gooseberry_falls/index.html
24	Grand Portage State Park	9393 East Highway 61, Grand Portage, MN 55605	47.998931,-89.59363	https://www.dnr.state.mn.us/state_parks/grand_portage/index.html
25	Great River Bluffs State Park	43605 Kipp Drive, Winona, MN 55987	43.937272,-91.429388	https://www.dnr.state.mn.us/state_parks/great_river_bluffs/index.html
26	Hayes Lake State Park	48990 County Road 4, Roseau, MN 56751	48.643872,-95.545248	https://www.dnr.state.mn.us/state_parks/hayes_lake/index.html
29	Itasca State Park	36750 Main Park Drive, Park Rapids, MN 56470	47.250031,-95.212237	https://www.dnr.state.mn.us/state_parks/itasca/index.html
30	Jay Cooke State Park	780 Highway 210, Carlton, MN 55718	46.661595,-92.399082	https://www.dnr.state.mn.us/state_parks/jay_cooke/index.html
32	Judge C. R. Magney State Park	4051 East Highway 61, Grand Marais, MN 55604	47.817415,-90.053747	https://www.dnr.state.mn.us/state_parks/judge_cr_magney/index.html
34	Lac Qui Parle State Park	14047 20th Street Northwest, Watson, MN 56295	45.021109,-95.894069	https://www.dnr.state.mn.us/state_parks/lac_qui_parle/index.html
35	Lake Bemidji State Park	3401 State Park Road Northeast, Bemidji, MN 56601	47.540636,-94.835799	https://www.dnr.state.mn.us/state_parks/lake_bemidji/index.html
36	Lake Bronson State Park	3793 230th St, Box 9	48.731464,-96.634675	https://www.dnr.state.mn.us/state_parks/lake_bronson/index.html
37	Lake Carlos State Park	2601 County Road 38 Northeast, Carlos, MN 56319	46.000442,-95.332947	https://www.dnr.state.mn.us/state_parks/lake_carlos/index.html
39	Lake Maria State Park	11411 Clementa Avenue Northwest, Monticello, MN 55362	45.317411,-93.931667	https://www.dnr.state.mn.us/state_parks/lake_maria/index.html
40	Lake Shetek State Park	163 State Park Road, Currie, MN 56123	44.094789,-95.6808	https://www.dnr.state.mn.us/state_parks/lake_shetek/index.html
42	McCarthy Beach State Park	7622 McCarthy Beach Road, Side Lake, MN 55781	47.6689,-93.031541	https://www.dnr.state.mn.us/state_parks/mccarthy_beach/index.html
43	Maplewood State Park	39721 Park Entrance Road, Pelican Rapids, MN 56572	46.549975,-95.954175	https://www.dnr.state.mn.us/state_parks/maplewood/index.html
41	Lake Vermilion-Soudan Underground Mine State Park	1302 McKinley Park Rd, Soudan, MN 55782	47.816696,-92.248857	https://www.dnr.state.mn.us/state_parks/lake_vermilion_soudan/index.html
2	Banning State Park	61101 Banning Park Rd, Sandstone, MN 55072	46.179636,-92.848759	https://www.dnr.state.mn.us/state_parks/banning/index.html
9	Carley State Park	50366 County Rd 4, Plainview, MN 55964	44.109915,-92.169425	https://www.dnr.state.mn.us/state_parks/carley/index.html
13	Father Hennepin State Park	41296 Father Hennepin Park Rd, Isle, MN 56342	46.138048,-93.480541	https://www.dnr.state.mn.us/state_parks/father_hennepin/index.html
27	Hill-Annex Mine State Park	880 Gary St, Calumet, MN 55716	47.325852,-93.277504	https://www.dnr.state.mn.us/state_parks/hill_annex_mine/index.html
28	Interstate State Park	307 Milltown Rd, Taylors Falls, MN 55084	45.394917,-92.667836	https://www.dnr.state.mn.us/state_parks/interstate/index.html
31	John A. Latsch State Park	US-61, Minnesota City, MN 55959	44.172549,-91.838344	https://www.dnr.state.mn.us/state_parks/john_latsch/index.html
38	Lake Louise State Park	12385 766th Ave, Le Roy, MN 55951	43.535955,-92.509176	https://www.dnr.state.mn.us/state_parks/lake_louise/index.html
44	Mille Lacs Kathio State Park	15066 Kathio State Park Road, Onamia, MN 56359	46.135411,-93.724473	https://www.dnr.state.mn.us/state_parks/mille_lacs_kathio/index.html
45	Minneopa State Park	54497 Gadwall Road, Mankato, MN 56001	44.156337,-94.091356	https://www.dnr.state.mn.us/state_parks/minneopa/index.html
46	Monson Lake State Park	1690 15th Street Northeast, Sunburg, MN 56289	45.318323,-95.275962	https://www.dnr.state.mn.us/state_parks/monson_lake/index.html
47	Moose Lake State Park	4252 County Road 137, Moose Lake, MN 55767	46.436375,-92.735812	https://www.dnr.state.mn.us/state_parks/moose_lake/index.html
48	Myre-Big Island State Park	19499 780th Avenue, Albert Lea, MN 56007	43.640411,-93.308976	https://www.dnr.state.mn.us/state_parks/myre_big_island/index.html
49	Nerstrand Big Woods State Park	9700 170th Street East, Nerstrand, MN 55053	44.341775,-93.091041	https://www.dnr.state.mn.us/state_parks/nerstrand_big_woods/index.html
50	Old Mill State Park	33489 240th Avenue Northwest, Argyle, MN 56713	48.361407,-96.565575	https://www.dnr.state.mn.us/state_parks/old_mill/index.html
51	Rice Lake State Park	8485 Rose Street, Owatonna, MN 55060	44.095564,-93.063508	https://www.dnr.state.mn.us/state_parks/rice_lake/index.html
52	St. Croix State Park	30065 St. Croix Park Road, Hinckley, MN 55037	46.01201,-92.617885	https://www.dnr.state.mn.us/state_parks/st_croix/index.html
53	Sakatah Lake State Park	50499 Sakatah Lake State Park Road, Waterville, MN 56096	44.217841,-93.532328	https://www.dnr.state.mn.us/state_parks/sakatah_lake/index.html
54	Savanna Portage State Park	55626 Lake Place, McGregor, MN 55760	46.757292,-93.249885	https://www.dnr.state.mn.us/state_parks/savanna_portage/index.html
55	Scenic State Park	56956 Scenic Highway 7, Bigfork, MN 56628	47.702943,-93.566799	https://www.dnr.state.mn.us/state_parks/scenic/index.html
57	Sibley State Park	800 Sibley Park Road Northeast, New London, MN 56273	45.311289,-95.009081	https://www.dnr.state.mn.us/state_parks/sibley/index.html
58	Split Rock Creek State Park	336 50th Avenue, Jasper, MN 56144	43.895953,-96.367169	https://www.dnr.state.mn.us/state_parks/split_rock_creek/index.html
59	Split Rock Lighthouse State Park	3755 Split Rock Lighthouse Road, Two Harbors, MN 55616	47.20565,-91.368248	https://www.dnr.state.mn.us/state_parks/split_rock_lighthouse/index.html
61	Tettegouche State Park	5702 Highway 61, Silver Bay, MN 55614	47.339875,-91.196346	https://www.dnr.state.mn.us/state_parks/tettegouche/index.html
62	Upper Sioux Agency State Park	5908 Highway 67, Granite Falls, MN 56241	44.736979,-95.460501	https://www.dnr.state.mn.us/state_parks/upper_sioux_agency/index.html
63	Whitewater State Park	19041 Highway 74, Altura, MN 55910	44.062919,-92.043204	https://www.dnr.state.mn.us/state_parks/whitewater/index.html
64	Wild River State Park	39797 Park Trail, Center City, MN 55012	45.524211,-92.754468	https://www.dnr.state.mn.us/state_parks/wild_river/index.html
65	William O'Brien State Park	16821 O'Brien Trail North, Marine on St. Croix, MN 55047	45.225346,-92.763574	https://www.dnr.state.mn.us/state_parks/william_obrien/index.html
66	Zippel Bay State Park	3684 54th Avenue Northwest, Williams, MN 56686	48.844387,-94.850004	https://www.dnr.state.mn.us/state_parks/zippel_bay/index.html
33	Kilen Woods State Park	50200 860th Street, Lakefield, MN 56150	43.732178,-95.068799	https://www.dnr.state.mn.us/state_parks/kilen_woods/index.html
56	Schoolcraft State Park	9042 Schoolcraft Lane NE, Deer River, MN 56636	47.222814,-93.806591	https://www.dnr.state.mn.us/state_parks/schoolcraft/index.html
20	George H. Crosby Manitou State Park	7616 Co Hwy 7, Finland, MN 55603	47.479452,-91.123011	https://www.dnr.state.mn.us/state_parks/george_crosby_manitou/index.html
60	Temperance River State Park	7620 West, MN-61, Schroeder, MN 55613	47.552663,-90.877469	https://www.dnr.state.mn.us/state_parks/temperance_river/index.html
\.


--
-- Name: parks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alishahwee
--

SELECT pg_catalog.setval('public.parks_id_seq', 66, true);


--
-- Name: parks parks_pkey; Type: CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT parks_pkey PRIMARY KEY (id);


--
-- Name: activities activities_parks_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_parks_id_fkey FOREIGN KEY (parks_id) REFERENCES public.parks(id);


--
-- Name: images images_parks_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_parks_id_fkey FOREIGN KEY (parks_id) REFERENCES public.parks(id);


--
-- PostgreSQL database dump complete
--

