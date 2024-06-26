��
�*�*
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
�?
ConstConst*
_output_shapes	
:�*
dtype0	*�>
value�>B�>	�"�>                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
�5
Const_1Const*
_output_shapes	
:�*
dtype0*�5
value�5B�5�BtoByouBiBtheBaBonBandBforBuByourBinBgetBisBofBmeBmyBnowBwithBatBcallBitBhaveBfreeBareBthatB2BorBimBsoBnotBcanBifBfromBbutBupBwillBbeBoffBthisBdoBnoBurBjustBallBweBairtelBitsB4BtcBdontBoutBwhenBgoBltgtBokBknowBhowBonlyBlikeBtimeBwhatBgoodBbyBdayBillBwasBthenBgotBcomeBtodayBamBwantBapplyBhomeBsendBcashbackBloveBclickBtextBbackBasBthereBmoreBgoingBuseBourBoneBanyBmobileBheBaboutBseeBdearBtxtBnewBneedBlorBdaysBappBstopBhereBcodeBbuyBsorryBbankBthanksBstillBnBbeenBrBhasBuptoBshopBwellB1BshoppingBflatBanBrsBreplyBlaterB	unlimitedBtellBhiBpleaseBcantBthinkBrechargeBhappyBherBtheyBtakeBclaimBsheBdaBphoneB3BdidBmuchBsomeBweekBlastBalsoBgreatBcallsBmakeBliveBplsBhopeBheyBcentralBcashBtooBmissBdBwhoBorderBnightBalreadyB100BtncBgiveBohBwhereBenjoyBhadBfirstBwinBwayBhimBtvBrightB50BwatBthatsBnumberBextraBshouldBsaleBwereBeB10BtomorrowBprizeBofferBsmsBafterBworkBpayBsayBsaidBmeetBaskByesBbabeBwhyBpackBdoingBbookBwouldBworthBwatchBfindBveryBreallyBpickBpaymentsBmsgBmoneyBampBthemBmessageByeahBperBcardBoverBeveryBcB5ByearBsoonBclassBlifeBdoneBdidntBdeliveryBusB	somethingBnextBcustomerBanythingBwonBlolBletBcosBsureBmorningBkBcontactBurgentBkeepBiveBcareBaccountBtryBsentBfeelBvalidBspecialBnokiaBhelpBfriendsBagainBcostBbBserviceBonlineBdownloadB1stBthingBsomeoneBaroundBtillBplaceBdownBbigBwhichBvoucherBvisitBtonightBotherBchatBbestBbeforeB6ByoureBcardsB30BwontBwaitBsleepBhelloBevenByetBwentBsonyBhisBgonnaBcouldB16BwanBvBoffersBthingsBsameBniceBleaveBlateBgudB20ByaBnameBmonthBminBlunchBcreditBchanceB18BxBwaitingBnetworkBmanyBdominosBdailyBcheckBtoldBstartBplayBlatestBjobBdunBwishBweekendBproductsBlookBjoinB
guaranteedBamazonBthkBtalkBstoreBpeopleBtoneBthoughtBsmileBreadyBlenskartBholidayBgettingBfewBendBcoolBawayB1000BtrulyBrealBoptoutBneverBmindBhahaBbeingB2000BshowsBpizzasBonceBminsBfinishBfineBearlyBcomingBalwaysBaboveByBsirBselectedBrs2000BmanBlineBfrmBfriendBdrawBcarB500B28ByocketBwannaBthanBshopatscBmeetingBmayBlongB
everythingBdetailsBdataBdatBbitBvideoBupiBtransactionBminutesBheartBhavingBhaventBworldBopenBlinkBhowsB
collectionBcollectBbecauseBawardedB150ByupBwatchingBtryingBthroughBstuffBreceiveBpointsBpersonBlarBintoBhouseBbonusBbetterBreachBnothingBmightBluvBlotBjusBeatBbirthdayBactuallyBusingBspeakBprobablyBlandlineBidBhesBhalfBguysBfunBcameraBboxBapolloB25B150ppmB15BwithoutBwhatsBthankBregisterBquiteBlittleBliaoBfavoriteBexpiresBaightB9B2ndByoByearsBwordBtheresBthanxBshitBsatBplanBhurryBhearBguessBdisBdenBanyoneBanotherBworkingBtwoBtmrBthoseBsweetBroomBprincessBpaBmusicBkissBhoursBhdfcBgirlBgiftBfamilyBeverBdinnerBcozBchooseBbedBacBxxxBthoughBputBproblemBpostBpartBmostBmissingBlookingBlehBindiaBiciciBgoldBgodBfuckBeasyBdoesBbetweenBahBwelcomeBuntilBtodaysBshallBrouterBokayBmaybeBleftBhourBforgotB	exclusiveBenoughBcongratulationsBcalledBbusBbringBbabyB7B5000B200BwotBwhileBtrueBtownBtopBtcsBstdBspeedBshesBsaysBsBprimeBpoBordersBmeansBgoesBfoodBeveningBdiscountBdecBchickenBcameBawardBxstreamBtonesBstartingBsinceBsaveBrs3000BrememberBpreviewBplusBpaytmBorangeBmissedBmadeBhotBdunnoBdudeB	deliveredBdadBbadBattemptBaskedBanywayB	afternoonB15gbBwakeBtripBtreatBtextsBspreadBspendBsexyBschoolBringtoneBpayingBmustBminimumBmemberBloseB	lifestyleB	happinessBfullBdoesntBboyBboredB	availableB150pB12ByourselfByoursBxmasBwifBwenBviaBtogetherBtilBsunBrunBpriceBprepaidBosoBofficeB
membershipBloanBliciousB	importantB	hellotuneBhavBhairBhafBgamesBgameBfridayBfiberBelseBdoubleBclubBcentralsBcallingBbtBableB84ByoullBwordsBwidBwantedBvouchersBusedB
universityBtrialBtheseBshowBsawBsaturdayBsadBrs50Brs4000B	rechargedBrateBpurchaseBprogramBplzBnetworksBnearestBmovieBmailBleiBjuzBignoreBget1BgbpsBfeelingB
experienceBeveBcongratsBbuy1BavailBalrightBabtB	yesterdayBworryBwantsBtimesBtakingBstayBshareBschBsbiBsayingBrs500BquizBpartyBopeningBolaBminuteBmakingBmakesBltdecimalgtBlovedBlimitedBhappenBentryBeitherBeachBcourseBcomfortBcomesBchargeBblockBbenefitsBardBaddressB8007ByouveBwwwmycentralinBwkBwifeBweeklyBwalkBtotB	speciallyBsessionBservicesBrs300BprivateBpmBpainBniteBnewsBmobBmessagesBlocalBleavingBknwBjohnBjanBisntBinstallBhurtBhdBguyBgr8BfinalBdrivingB	deliciousBdeB
celebratesBbusyBbundleBbrandsBblackBbelieveB	beautifulB
applicableBactivateB8B40BwithinBwhitehatBweeksBwBvalidityBunsubscribeBtscsBtriedBsuperBsetBseasonBsaeBrs599Brs598Brs499BringBreBnationalBmoviesBmonthsBmBletsBlessonBlandBjrsBheadBgetsBgBfutureBforgetBfaceBemailBearnBdreamsBcompanyBclassesB	christmasBchennaiBcauseBboytoyBbitly2ogzagwBangryB250B12hrsBwinnerBwilBuserBupdateBtouchBtookBthoBthinkingBtestBsmthBsleepingBsisBrs250BroamingBpubBpostpaidBpoboxBpicsBoldBnoeBneedsBmenBmatchesBmatchBhttpepw9comwpmhkqaayqhzwBhrsBhaBgoinBfrndB
friendshipBflipkartBfinishedBfestiveBdropBdriveBdiwaliBcontentBcollegeBcodingBcloseBchangeBbreakBbothBbataBauctionBaccessBvsBuairtelinfreeinstallation9BtypeBtakesBtBsummerBstandBsmallBsimBsecondBrs3999Brs1000BriteBreasonBprobBpoundsBphonesBownBotpBokieBnovBmuBlistenBlifetimeBhuhBhandBgetairteltvthanksBfrndsBfoundBfastBfallB
eyeglassesBenterBendsBdrinkBdinBdateBchoiceBawesomeBawaitBaloneBalertBaftBacrossB750B599BzomatoBwitBwifiBwholeBwalletBulBtomoBtellingBsubscriptionBstoryBstartsBsmilingBsisterBsecretBsearchBsafeBrs51Brs100BquestionBpolyBpizzaBoperatorBonesBnevaBmeanBmateBluckyBlovelyBlotsBlogBjulyBinvitedBinstantBhardBgoodmorningBgoneBfrBflavoursBfebBexploreBexistingBexcitingBendingBdatingBdarlinBcsBcricketBcolourBcallerBblowBbillBbdayBapplicationBanytimeBanswerBamountB86688B800B08000930705BwrongBwowB	wonderfulBwklyBwhateverBvaluedBukBtxtsBtheirBthBsurpriseB	superfastB	statementBstartedBsoundsBsmokeBsimpleBsideBsexBseaBrs6000Brs299Brs20BprojectBpremiumBpointBplayingBphotoBperiodBpassBorediBoptBmrpBmatesBltdBkindBinternetBinstallationBinbBhungryBhoBhitBhellBhappenedBgirlsBgasBfeltBfarBfancyBeveryoneBemiBcrazyBcinemaBchannelsBcarlosB	camcorderBboutBalong
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_4Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_22*
value_dtype0	
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name10875*
value_dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
�
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_namepredictions/kernel
z
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes
:	�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:�*
dtype0
�
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:��*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:�*
dtype0
{
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2�*
shared_nameconv1d/kernel
t
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*#
_output_shapes
:2�*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�2*
dtype0
~
serving_default_StringInputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_StringInput
hash_tableConst_5Const_4Const_3embedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_38818
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_1Const*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__initializer_39408
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__initializer_39423
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�C
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�B
value�BB�B B�B
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
* 
;
	keras_api
_lookup_layer
_adapt_function*
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
C
1
2
 3
!4
"5
#6
$7
%8
&9*
C
0
1
 2
!3
"4
#5
$6
%7
&8*
* 
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
,trace_0
-trace_1
.trace_2
/trace_3* 
6
0trace_0
1trace_1
2trace_2
3trace_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
O
7
_variables
8_iterations
9_learning_rate
:_update_step_xla*

;serving_default* 
* 
7
<	keras_api
=lookup_table
>token_counts*

?trace_0* 
* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

embeddings*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

kernel
 bias
 L_jit_compiled_convolution_op*
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

!kernel
"bias
 S_jit_compiled_convolution_op*
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

#kernel
$bias*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator* 
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

%kernel
&bias*
C
0
1
 2
!3
"4
#5
$6
%7
&8*
C
0
1
 2
!3
"4
#5
$6
%7
&8*
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
TN
VARIABLE_VALUEembedding/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv1d/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv1d/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv1d_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv1d_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEpredictions/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEpredictions/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

z0
{1*
* 
* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
/
4	capture_1
5	capture_2
6	capture_3* 
* 
* 
* 

80*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
/
4	capture_1
5	capture_2
6	capture_3* 
* 
R
|_initializer
}_create_resource
~_initialize
_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*

�	capture_1* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
 1*

0
 1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

!0
"1*

!0
"1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

#0
$1*

#0
$1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

%0
&1*

%0
&1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
<
0
1
2
3
4
5
6
7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_39538
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/bias	iterationlearning_rateMutableHashTabletotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_39605�
�
�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38849

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�2 
	unknown_4:2�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_39363

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
&__inference_restore_from_tensors_39592M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: @
<mutablehashtable_table_restore_lookuptableimportv2_restorev2B
>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1	
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable<mutablehashtable_table_restore_lookuptableimportv2_restorev2>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes

: ::2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:) %
#
_class
loc:@MutableHashTable:C?
#
_class
loc:@MutableHashTable

_output_shapes
::C?
#
_class
loc:@MutableHashTable

_output_shapes
:
�
~
)__inference_embedding_layer_call_fn_39257

inputs
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_37865|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38635
stringinput
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�2 
	unknown_4:2�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstringinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
__inference_restore_fn_39456
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :N
IdentityIdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
��
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_39093

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	>
+conv_model_embedding_embedding_lookup_39039:	�2T
=conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource:2�@
1conv_model_conv1d_biasadd_readvariableop_resource:	�W
?conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��B
3conv_model_conv1d_1_biasadd_readvariableop_resource:	�C
/conv_model_dense_matmul_readvariableop_resource:
��?
0conv_model_dense_biasadd_readvariableop_resource:	�H
5conv_model_predictions_matmul_readvariableop_resource:	�D
6conv_model_predictions_biasadd_readvariableop_resource:
identity��(Conv-Model/conv1d/BiasAdd/ReadVariableOp�4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp�6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�'Conv-Model/dense/BiasAdd/ReadVariableOp�&Conv-Model/dense/MatMul/ReadVariableOp�%Conv-Model/embedding/embedding_lookup�-Conv-Model/predictions/BiasAdd/ReadVariableOp�,Conv-Model/predictions/MatMul/ReadVariableOp�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
Conv-Model/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:����������x
Conv-Model/embedding/CastCastConv-Model/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
%Conv-Model/embedding/embedding_lookupResourceGather+conv_model_embedding_embedding_lookup_39039Conv-Model/embedding/Cast:y:0*
Tindices0*>
_class4
20loc:@Conv-Model/embedding/embedding_lookup/39039*,
_output_shapes
:����������2*
dtype0�
.Conv-Model/embedding/embedding_lookup/IdentityIdentity.Conv-Model/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@Conv-Model/embedding/embedding_lookup/39039*,
_output_shapes
:����������2�
0Conv-Model/embedding/embedding_lookup/Identity_1Identity7Conv-Model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2r
'Conv-Model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#Conv-Model/conv1d/Conv1D/ExpandDims
ExpandDims9Conv-Model/embedding/embedding_lookup/Identity_1:output:00Conv-Model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp=conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0k
)Conv-Model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%Conv-Model/conv1d/Conv1D/ExpandDims_1
ExpandDims<Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:02Conv-Model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
Conv-Model/conv1d/Conv1DConv2D,Conv-Model/conv1d/Conv1D/ExpandDims:output:0.Conv-Model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
 Conv-Model/conv1d/Conv1D/SqueezeSqueeze!Conv-Model/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
(Conv-Model/conv1d/BiasAdd/ReadVariableOpReadVariableOp1conv_model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/conv1d/BiasAddBiasAdd)Conv-Model/conv1d/Conv1D/Squeeze:output:00Conv-Model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�y
Conv-Model/conv1d/ReluRelu"Conv-Model/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�t
)Conv-Model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%Conv-Model/conv1d_1/Conv1D/ExpandDims
ExpandDims$Conv-Model/conv1d/Relu:activations:02Conv-Model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0m
+Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'Conv-Model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims>Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:04Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv-Model/conv1d_1/Conv1DConv2D.Conv-Model/conv1d_1/Conv1D/ExpandDims:output:00Conv-Model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
"Conv-Model/conv1d_1/Conv1D/SqueezeSqueeze#Conv-Model/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
*Conv-Model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp3conv_model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/conv1d_1/BiasAddBiasAdd+Conv-Model/conv1d_1/Conv1D/Squeeze:output:02Conv-Model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������}
Conv-Model/conv1d_1/ReluRelu$Conv-Model/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������w
5Conv-Model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#Conv-Model/global_max_pooling1d/MaxMax&Conv-Model/conv1d_1/Relu:activations:0>Conv-Model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
&Conv-Model/dense/MatMul/ReadVariableOpReadVariableOp/conv_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Conv-Model/dense/MatMulMatMul,Conv-Model/global_max_pooling1d/Max:output:0.Conv-Model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'Conv-Model/dense/BiasAdd/ReadVariableOpReadVariableOp0conv_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/dense/BiasAddBiasAdd!Conv-Model/dense/MatMul:product:0/Conv-Model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
Conv-Model/dense/ReluRelu!Conv-Model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������e
 Conv-Model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Conv-Model/dropout/dropout/MulMul#Conv-Model/dense/Relu:activations:0)Conv-Model/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������s
 Conv-Model/dropout/dropout/ShapeShape#Conv-Model/dense/Relu:activations:0*
T0*
_output_shapes
:�
7Conv-Model/dropout/dropout/random_uniform/RandomUniformRandomUniform)Conv-Model/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0n
)Conv-Model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
'Conv-Model/dropout/dropout/GreaterEqualGreaterEqual@Conv-Model/dropout/dropout/random_uniform/RandomUniform:output:02Conv-Model/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������g
"Conv-Model/dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
#Conv-Model/dropout/dropout/SelectV2SelectV2+Conv-Model/dropout/dropout/GreaterEqual:z:0"Conv-Model/dropout/dropout/Mul:z:0+Conv-Model/dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
,Conv-Model/predictions/MatMul/ReadVariableOpReadVariableOp5conv_model_predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Conv-Model/predictions/MatMulMatMul,Conv-Model/dropout/dropout/SelectV2:output:04Conv-Model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-Conv-Model/predictions/BiasAdd/ReadVariableOpReadVariableOp6conv_model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv-Model/predictions/BiasAddBiasAdd'Conv-Model/predictions/MatMul:product:05Conv-Model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Conv-Model/predictions/SigmoidSigmoid'Conv-Model/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"Conv-Model/predictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^Conv-Model/conv1d/BiasAdd/ReadVariableOp5^Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp+^Conv-Model/conv1d_1/BiasAdd/ReadVariableOp7^Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp(^Conv-Model/dense/BiasAdd/ReadVariableOp'^Conv-Model/dense/MatMul/ReadVariableOp&^Conv-Model/embedding/embedding_lookup.^Conv-Model/predictions/BiasAdd/ReadVariableOp-^Conv-Model/predictions/MatMul/ReadVariableOpE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2T
(Conv-Model/conv1d/BiasAdd/ReadVariableOp(Conv-Model/conv1d/BiasAdd/ReadVariableOp2l
4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2X
*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp2p
6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2R
'Conv-Model/dense/BiasAdd/ReadVariableOp'Conv-Model/dense/BiasAdd/ReadVariableOp2P
&Conv-Model/dense/MatMul/ReadVariableOp&Conv-Model/dense/MatMul/ReadVariableOp2N
%Conv-Model/embedding/embedding_lookup%Conv-Model/embedding/embedding_lookup2^
-Conv-Model/predictions/BiasAdd/ReadVariableOp-Conv-Model/predictions/BiasAdd/ReadVariableOp2\
,Conv-Model/predictions/MatMul/ReadVariableOp,Conv-Model/predictions/MatMul/ReadVariableOp2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#��������������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#�������������������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:�������������������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�f
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38334

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
conv_model_38314:	�2'
conv_model_38316:2�
conv_model_38318:	�(
conv_model_38320:��
conv_model_38322:	�$
conv_model_38324:
��
conv_model_38326:	�#
conv_model_38328:	�
conv_model_38330:
identity��"Conv-Model/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"Conv-Model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0conv_model_38314conv_model_38316conv_model_38318conv_model_38320conv_model_38322conv_model_38324conv_model_38326conv_model_38328conv_model_38330*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38313z
IdentityIdentity+Conv-Model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv-Model/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"Conv-Model/StatefulPartitionedCall"Conv-Model/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�f
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38709
stringinputU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
conv_model_38689:	�2'
conv_model_38691:2�
conv_model_38693:	�(
conv_model_38695:��
conv_model_38697:	�$
conv_model_38699:
��
conv_model_38701:	�#
conv_model_38703:	�
conv_model_38705:
identity��"Conv-Model/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2c
text_vectorization/StringLowerStringLowerstringinput*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"Conv-Model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0conv_model_38689conv_model_38691conv_model_38693conv_model_38695conv_model_38697conv_model_38699conv_model_38701conv_model_38703conv_model_38705*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38313z
IdentityIdentity+Conv-Model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv-Model/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"Conv-Model/StatefulPartitionedCall"Conv-Model/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�<
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38313

inputs	3
 embedding_embedding_lookup_38266:	�2I
2conv1d_conv1d_expanddims_1_readvariableop_resource:2�5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
*predictions_matmul_readvariableop_resource:	�9
+predictions_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�embedding/embedding_lookup�"predictions/BiasAdd/ReadVariableOp�!predictions/MatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:����������b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_38266embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/38266*,
_output_shapes
:����������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/38266*,
_output_shapes
:����������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:�����������
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
predictions/MatMulMatMuldropout/Identity:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitypredictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_save_fn_39447
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:�
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
�
#__inference_signature_wrapper_38818
stringinput
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�2 
	unknown_4:2�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstringinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_37835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�<
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39191

inputs	3
 embedding_embedding_lookup_39144:	�2I
2conv1d_conv1d_expanddims_1_readvariableop_resource:2�5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
*predictions_matmul_readvariableop_resource:	�9
+predictions_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�embedding/embedding_lookup�"predictions/BiasAdd/ReadVariableOp�!predictions/MatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:����������b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_39144embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/39144*,
_output_shapes
:����������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/39144*,
_output_shapes
:����������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:�����������
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
predictions/MatMulMatMuldropout/Identity:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitypredictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�!
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_37956

inputs"
embedding_37866:	�2#
conv1d_37886:2�
conv1d_37888:	�&
conv1d_1_37908:��
conv1d_1_37910:	�
dense_37926:
��
dense_37928:	�$
predictions_37950:	�
predictions_37952:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#predictions/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_37866*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_37865�
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_37886conv1d_37888*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_37885�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_37908conv1d_1_37910*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907�
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845�
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_37926dense_37928*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_37925�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_37936�
#predictions/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0predictions_37950predictions_37952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_37949{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�t
�
__inference_adapt_step_22524
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	��IteratorGetNext�(None_lookup_table_find/LookupTableFindV2�,None_lookup_table_insert/LookupTableInsertV2�
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*
_output_shapes
: *
output_shapes
: *
output_types
2P
StringLowerStringLowerIteratorGetNext:components:0*
_output_shapes
: �
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*
_output_shapes
: *
pattern[^a-zA-Z0-9 ]*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*
_output_shapes
: *A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite f
StringSplit/stackPackStaticRegexReplace_1:output:0*
N*
T0*
_output_shapes
:^
StringSplit/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
%StringSplit/StringSplit/StringSplitV2StringSplitV2StringSplit/stack:output:0&StringSplit/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:|
+StringSplit/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-StringSplit/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-StringSplit/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
%StringSplit/StringSplit/strided_sliceStridedSlice/StringSplit/StringSplit/StringSplitV2:indices:04StringSplit/StringSplit/strided_slice/stack:output:06StringSplit/StringSplit/strided_slice/stack_1:output:06StringSplit/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskw
-StringSplit/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/StringSplit/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/StringSplit/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'StringSplit/StringSplit/strided_slice_1StridedSlice-StringSplit/StringSplit/StringSplitV2:shape:06StringSplit/StringSplit/strided_slice_1/stack:output:08StringSplit/StringSplit/strided_slice_1/stack_1:output:08StringSplit/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
NStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast.StringSplit/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast0StringSplit/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdaStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
\StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater`StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0eStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2_StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
`StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0iStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountcStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumbStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
YStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2bStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:���������w
-StringSplit/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
/StringSplit/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������y
/StringSplit/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'StringSplit/RaggedGetItem/strided_sliceStridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:06StringSplit/RaggedGetItem/strided_slice/stack:output:08StringSplit/RaggedGetItem/strided_slice/stack_1:output:08StringSplit/RaggedGetItem/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_masky
/StringSplit/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)StringSplit/RaggedGetItem/strided_slice_1StridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:08StringSplit/RaggedGetItem/strided_slice_1/stack:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_masky
/StringSplit/RaggedGetItem/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)StringSplit/RaggedGetItem/strided_slice_2StridedSlice0StringSplit/RaggedGetItem/strided_slice:output:08StringSplit/RaggedGetItem/strided_slice_2/stack:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_masky
/StringSplit/RaggedGetItem/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)StringSplit/RaggedGetItem/strided_slice_3StridedSlice2StringSplit/RaggedGetItem/strided_slice_1:output:08StringSplit/RaggedGetItem/strided_slice_3/stack:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maska
StringSplit/RaggedGetItem/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R�
/StringSplit/RaggedGetItem/strided_slice_4/stackPack2StringSplit/RaggedGetItem/strided_slice_2:output:0*
N*
T0	*
_output_shapes
:�
1StringSplit/RaggedGetItem/strided_slice_4/stack_1Pack2StringSplit/RaggedGetItem/strided_slice_3:output:0*
N*
T0	*
_output_shapes
:�
1StringSplit/RaggedGetItem/strided_slice_4/stack_2Pack(StringSplit/RaggedGetItem/Const:output:0*
N*
T0	*
_output_shapes
:�
)StringSplit/RaggedGetItem/strided_slice_4StridedSlice.StringSplit/StringSplit/StringSplitV2:values:08StringSplit/RaggedGetItem/strided_slice_4/stack:output:0:StringSplit/RaggedGetItem/strided_slice_4/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_4/stack_2:output:0*
Index0	*
T0*#
_output_shapes
:���������r
/StringSplit/RaggedGetItem/strided_slice_5/ConstConst*
_output_shapes
: *
dtype0*
valueB �
)StringSplit/RaggedGetItem/strided_slice_5StridedSlice2StringSplit/RaggedGetItem/strided_slice_4:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:0*
Index0*
T0*#
_output_shapes
:���������P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims2StringSplit/RaggedGetItem/strided_slice_5:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������m
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*#
_output_shapes
:����������
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:���������:���������:���������*
out_idx0	�
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:�
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
�

�
@__inference_dense_layer_call_and_return_conditional_losses_39348

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
*__inference_Conv-Model_layer_call_fn_37977

inputs
unknown:	�2 
	unknown_0:2�
	unknown_1:	�!
	unknown_2:��
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_37956o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�

�
*__inference_Conv-Model_layer_call_fn_39116

inputs	
unknown:	�2 
	unknown_0:2�
	unknown_1:	�!
	unknown_2:��
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
k
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_39328

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�!
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38175

inputs"
embedding_38149:	�2#
conv1d_38152:2�
conv1d_38154:	�&
conv1d_1_38157:��
conv1d_1_38159:	�
dense_38163:
��
dense_38165:	�$
predictions_38169:	�
predictions_38171:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#predictions/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_38149*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_37865�
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_38152conv1d_38154*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_37885�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_38157conv1d_1_38159*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907�
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845�
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_38163dense_38165*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_37925�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_37936�
#predictions/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0predictions_38169predictions_38171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_37949{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
+__inference_predictions_layer_call_fn_39384

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_37949o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_39375

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_38007

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�f
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38783
stringinputU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
conv_model_38763:	�2'
conv_model_38765:2�
conv_model_38767:	�(
conv_model_38769:��
conv_model_38771:	�$
conv_model_38773:
��
conv_model_38775:	�#
conv_model_38777:	�
conv_model_38779:
identity��"Conv-Model/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2c
text_vectorization/StringLowerStringLowerstringinput*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"Conv-Model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0conv_model_38763conv_model_38765conv_model_38767conv_model_38769conv_model_38771conv_model_38773conv_model_38775conv_model_38777conv_model_38779*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38447z
IdentityIdentity+Conv-Model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv-Model/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"Conv-Model/StatefulPartitionedCall"Conv-Model/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�*
�
__inference__traced_save_39538
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_6"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 * 
dtypes
2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapesv
t: :	�2:2�:�:��:�:
��:�:	�:: : ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�2:)%
#
_output_shapes
:2�:!

_output_shapes	
:�:*&
$
_output_shapes
:��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
C__inference_conv1d_1_layer_call_and_return_conditional_losses_39317

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#��������������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#�������������������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:�������������������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
(__inference_conv1d_1_layer_call_fn_39301

inputs
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
΢
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38983

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	>
+conv_model_embedding_embedding_lookup_38936:	�2T
=conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource:2�@
1conv_model_conv1d_biasadd_readvariableop_resource:	�W
?conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��B
3conv_model_conv1d_1_biasadd_readvariableop_resource:	�C
/conv_model_dense_matmul_readvariableop_resource:
��?
0conv_model_dense_biasadd_readvariableop_resource:	�H
5conv_model_predictions_matmul_readvariableop_resource:	�D
6conv_model_predictions_biasadd_readvariableop_resource:
identity��(Conv-Model/conv1d/BiasAdd/ReadVariableOp�4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp�6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�'Conv-Model/dense/BiasAdd/ReadVariableOp�&Conv-Model/dense/MatMul/ReadVariableOp�%Conv-Model/embedding/embedding_lookup�-Conv-Model/predictions/BiasAdd/ReadVariableOp�,Conv-Model/predictions/MatMul/ReadVariableOp�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
Conv-Model/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:����������x
Conv-Model/embedding/CastCastConv-Model/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
%Conv-Model/embedding/embedding_lookupResourceGather+conv_model_embedding_embedding_lookup_38936Conv-Model/embedding/Cast:y:0*
Tindices0*>
_class4
20loc:@Conv-Model/embedding/embedding_lookup/38936*,
_output_shapes
:����������2*
dtype0�
.Conv-Model/embedding/embedding_lookup/IdentityIdentity.Conv-Model/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@Conv-Model/embedding/embedding_lookup/38936*,
_output_shapes
:����������2�
0Conv-Model/embedding/embedding_lookup/Identity_1Identity7Conv-Model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2r
'Conv-Model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#Conv-Model/conv1d/Conv1D/ExpandDims
ExpandDims9Conv-Model/embedding/embedding_lookup/Identity_1:output:00Conv-Model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp=conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0k
)Conv-Model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%Conv-Model/conv1d/Conv1D/ExpandDims_1
ExpandDims<Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:02Conv-Model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
Conv-Model/conv1d/Conv1DConv2D,Conv-Model/conv1d/Conv1D/ExpandDims:output:0.Conv-Model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
 Conv-Model/conv1d/Conv1D/SqueezeSqueeze!Conv-Model/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
(Conv-Model/conv1d/BiasAdd/ReadVariableOpReadVariableOp1conv_model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/conv1d/BiasAddBiasAdd)Conv-Model/conv1d/Conv1D/Squeeze:output:00Conv-Model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�y
Conv-Model/conv1d/ReluRelu"Conv-Model/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�t
)Conv-Model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%Conv-Model/conv1d_1/Conv1D/ExpandDims
ExpandDims$Conv-Model/conv1d/Relu:activations:02Conv-Model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0m
+Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'Conv-Model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims>Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:04Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv-Model/conv1d_1/Conv1DConv2D.Conv-Model/conv1d_1/Conv1D/ExpandDims:output:00Conv-Model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
"Conv-Model/conv1d_1/Conv1D/SqueezeSqueeze#Conv-Model/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
*Conv-Model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp3conv_model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/conv1d_1/BiasAddBiasAdd+Conv-Model/conv1d_1/Conv1D/Squeeze:output:02Conv-Model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������}
Conv-Model/conv1d_1/ReluRelu$Conv-Model/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������w
5Conv-Model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#Conv-Model/global_max_pooling1d/MaxMax&Conv-Model/conv1d_1/Relu:activations:0>Conv-Model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
&Conv-Model/dense/MatMul/ReadVariableOpReadVariableOp/conv_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Conv-Model/dense/MatMulMatMul,Conv-Model/global_max_pooling1d/Max:output:0.Conv-Model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'Conv-Model/dense/BiasAdd/ReadVariableOpReadVariableOp0conv_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Conv-Model/dense/BiasAddBiasAdd!Conv-Model/dense/MatMul:product:0/Conv-Model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
Conv-Model/dense/ReluRelu!Conv-Model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Conv-Model/dropout/IdentityIdentity#Conv-Model/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
,Conv-Model/predictions/MatMul/ReadVariableOpReadVariableOp5conv_model_predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Conv-Model/predictions/MatMulMatMul$Conv-Model/dropout/Identity:output:04Conv-Model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-Conv-Model/predictions/BiasAdd/ReadVariableOpReadVariableOp6conv_model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv-Model/predictions/BiasAddBiasAdd'Conv-Model/predictions/MatMul:product:05Conv-Model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Conv-Model/predictions/SigmoidSigmoid'Conv-Model/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"Conv-Model/predictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^Conv-Model/conv1d/BiasAdd/ReadVariableOp5^Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp+^Conv-Model/conv1d_1/BiasAdd/ReadVariableOp7^Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp(^Conv-Model/dense/BiasAdd/ReadVariableOp'^Conv-Model/dense/MatMul/ReadVariableOp&^Conv-Model/embedding/embedding_lookup.^Conv-Model/predictions/BiasAdd/ReadVariableOp-^Conv-Model/predictions/MatMul/ReadVariableOpE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2T
(Conv-Model/conv1d/BiasAdd/ReadVariableOp(Conv-Model/conv1d/BiasAdd/ReadVariableOp2l
4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2X
*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp*Conv-Model/conv1d_1/BiasAdd/ReadVariableOp2p
6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp6Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2R
'Conv-Model/dense/BiasAdd/ReadVariableOp'Conv-Model/dense/BiasAdd/ReadVariableOp2P
&Conv-Model/dense/MatMul/ReadVariableOp&Conv-Model/dense/MatMul/ReadVariableOp2N
%Conv-Model/embedding/embedding_lookup%Conv-Model/embedding/embedding_lookup2^
-Conv-Model/predictions/BiasAdd/ReadVariableOp-Conv-Model/predictions/BiasAdd/ReadVariableOp2\
,Conv-Model/predictions/MatMul/ReadVariableOp,Conv-Model/predictions/MatMul/ReadVariableOp2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
F__inference_predictions_layer_call_and_return_conditional_losses_37949

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_conv1d_layer_call_and_return_conditional_losses_37885

inputsB
+conv1d_expanddims_1_readvariableop_resource:2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#�������������������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:�������������������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38363
stringinput
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�2 
	unknown_4:2�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstringinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
__inference__initializer_394088
4key_value_init10874_lookuptableimportv2_table_handle0
,key_value_init10874_lookuptableimportv2_keys2
.key_value_init10874_lookuptableimportv2_values	
identity��'key_value_init10874/LookupTableImportV2�
'key_value_init10874/LookupTableImportV2LookupTableImportV24key_value_init10874_lookuptableimportv2_table_handle,key_value_init10874_lookuptableimportv2_keys.key_value_init10874_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init10874/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2R
'key_value_init10874/LookupTableImportV2'key_value_init10874/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
C
'__inference_dropout_layer_call_fn_39353

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_37936a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38880

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�2 
	unknown_4:2�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_37936

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
.
__inference__initializer_39423
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�

�
*__inference_Conv-Model_layer_call_fn_38146

inputs
unknown:	�2 
	unknown_0:2�
	unknown_1:	�!
	unknown_2:��
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38102o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�

�
*__inference_Conv-Model_layer_call_fn_39139

inputs	
unknown:	�2 
	unknown_0:2�
	unknown_1:	�!
	unknown_2:��
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_37835
stringinputl
hconv_pruned_spam_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handlem
iconv_pruned_spam_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	C
?conv_pruned_spam_model_text_vectorization_string_lookup_equal_yF
Bconv_pruned_spam_model_text_vectorization_string_lookup_selectv2_t	U
Bconv_pruned_spam_model_conv_model_embedding_embedding_lookup_37788:	�2k
Tconv_pruned_spam_model_conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource:2�W
Hconv_pruned_spam_model_conv_model_conv1d_biasadd_readvariableop_resource:	�n
Vconv_pruned_spam_model_conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��Y
Jconv_pruned_spam_model_conv_model_conv1d_1_biasadd_readvariableop_resource:	�Z
Fconv_pruned_spam_model_conv_model_dense_matmul_readvariableop_resource:
��V
Gconv_pruned_spam_model_conv_model_dense_biasadd_readvariableop_resource:	�_
Lconv_pruned_spam_model_conv_model_predictions_matmul_readvariableop_resource:	�[
Mconv_pruned_spam_model_conv_model_predictions_biasadd_readvariableop_resource:
identity��?CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOp�KCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�ACONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOp�MCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�>CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOp�=CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOp�<CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup�DCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOp�CCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOp�[CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2z
5CONV-PRUNED-SPAM-MODEL/text_vectorization/StringLowerStringLowerstringinput*'
_output_shapes
:����������
<CONV-PRUNED-SPAM-MODEL/text_vectorization/StaticRegexReplaceStaticRegexReplace>CONV-PRUNED-SPAM-MODEL/text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
>CONV-PRUNED-SPAM-MODEL/text_vectorization/StaticRegexReplace_1StaticRegexReplaceECONV-PRUNED-SPAM-MODEL/text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
1CONV-PRUNED-SPAM-MODEL/text_vectorization/SqueezeSqueezeGCONV-PRUNED-SPAM-MODEL/text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������|
;CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
CCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/StringSplitV2StringSplitV2:CONV-PRUNED-SPAM-MODEL/text_vectorization/Squeeze:output:0DCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
ICONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
KCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
KCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
CCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_sliceStridedSliceMCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/StringSplitV2:indices:0RCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stack:output:0TCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stack_1:output:0TCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
KCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
MCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
MCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
ECONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1StridedSliceKCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/StringSplitV2:shape:0TCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stack:output:0VCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0VCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
lCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastLCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
nCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastNCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
vCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapepCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
vCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
uCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
zCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater~CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
uCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast|CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
tCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxpCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
vCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
tCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2}CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
tCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulyCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumrCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumrCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0|CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
~CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
xCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapepCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
yCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0|CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
sCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
nCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0|CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
wCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
sCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
nCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2�CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0tCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0|CONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
[CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2hconv_pruned_spam_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleLCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/StringSplitV2:values:0iconv_pruned_spam_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
=CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/EqualEqualLCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/StringSplitV2:values:0?conv_pruned_spam_model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
@CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/SelectV2SelectV2ACONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/Equal:z:0Bconv_pruned_spam_model_text_vectorization_string_lookup_selectv2_tdCONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
@CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/IdentityIdentityICONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:����������
FCONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
>CONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
MCONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorGCONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/Const:output:0ICONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/Identity:output:0OCONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/default_value:output:0NCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice_1:output:0LCONV-PRUNED-SPAM-MODEL/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
&CONV-PRUNED-SPAM-MODEL/Conv-Model/CastCastVCONV-PRUNED-SPAM-MODEL/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:�����������
0CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/CastCast*CONV-PRUNED-SPAM-MODEL/Conv-Model/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
<CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookupResourceGatherBconv_pruned_spam_model_conv_model_embedding_embedding_lookup_377884CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/Cast:y:0*
Tindices0*U
_classK
IGloc:@CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/37788*,
_output_shapes
:����������2*
dtype0�
ECONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/IdentityIdentityECONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup:output:0*
T0*U
_classK
IGloc:@CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/37788*,
_output_shapes
:����������2�
GCONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/Identity_1IdentityNCONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2�
>CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
:CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims
ExpandDimsPCONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup/Identity_1:output:0GCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
KCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpTconv_pruned_spam_model_conv_model_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0�
@CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
<CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1
ExpandDimsSCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0ICONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
/CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1DConv2DCCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims:output:0ECONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
7CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/SqueezeSqueeze8CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
?CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOpReadVariableOpHconv_pruned_spam_model_conv_model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAddBiasAdd@CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/Squeeze:output:0GCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0��
-CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/ReluRelu9CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0��
@CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
<CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims
ExpandDims;CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Relu:activations:0ICONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
MCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpVconv_pruned_spam_model_conv_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0�
BCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
>CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsUCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0KCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
1CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1DConv2DECONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims:output:0GCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
9CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/SqueezeSqueeze:CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
ACONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOpJconv_pruned_spam_model_conv_model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAddBiasAddBCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/Squeeze:output:0ICONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
/CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/ReluRelu;CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
LCONV-PRUNED-SPAM-MODEL/Conv-Model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
:CONV-PRUNED-SPAM-MODEL/Conv-Model/global_max_pooling1d/MaxMax=CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Relu:activations:0UCONV-PRUNED-SPAM-MODEL/Conv-Model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
=CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOpReadVariableOpFconv_pruned_spam_model_conv_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
.CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMulMatMulCCONV-PRUNED-SPAM-MODEL/Conv-Model/global_max_pooling1d/Max:output:0ECONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOpReadVariableOpGconv_pruned_spam_model_conv_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAddBiasAdd8CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul:product:0FCONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/ReluRelu8CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2CONV-PRUNED-SPAM-MODEL/Conv-Model/dropout/IdentityIdentity:CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
CCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOpReadVariableOpLconv_pruned_spam_model_conv_model_predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
4CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMulMatMul;CONV-PRUNED-SPAM-MODEL/Conv-Model/dropout/Identity:output:0KCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
DCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOpReadVariableOpMconv_pruned_spam_model_conv_model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
5CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAddBiasAdd>CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul:product:0LCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/SigmoidSigmoid>CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity9CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp@^CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOpL^CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpB^CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOpN^CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?^CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOp>^CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOp=^CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookupE^CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOpD^CONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOp\^CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2�
?CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOp?CONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/BiasAdd/ReadVariableOp2�
KCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpKCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2�
ACONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOpACONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/BiasAdd/ReadVariableOp2�
MCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpMCONV-PRUNED-SPAM-MODEL/Conv-Model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2�
>CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOp>CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/BiasAdd/ReadVariableOp2~
=CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOp=CONV-PRUNED-SPAM-MODEL/Conv-Model/dense/MatMul/ReadVariableOp2|
<CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup<CONV-PRUNED-SPAM-MODEL/Conv-Model/embedding/embedding_lookup2�
DCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOpDCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/BiasAdd/ReadVariableOp2�
CCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOpCCONV-PRUNED-SPAM-MODEL/Conv-Model/predictions/MatMul/ReadVariableOp2�
[CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2[CONV-PRUNED-SPAM-MODEL/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:T P
'
_output_shapes
:���������
%
_user_specified_nameStringInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�"
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38102

inputs"
embedding_38076:	�2#
conv1d_38079:2�
conv1d_38081:	�&
conv1d_1_38084:��
conv1d_1_38086:	�
dense_38090:
��
dense_38092:	�$
predictions_38096:	�
predictions_38098:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#predictions/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_38076*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_37865�
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_38079conv1d_38081*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_37885�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_38084conv1d_1_38086*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907�
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845�
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_38090dense_38092*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_37925�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38007�
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0predictions_38096predictions_38098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_37949{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
P
4__inference_global_max_pooling1d_layer_call_fn_39322

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_39358

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38007p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
__inference__creator_39418
identity: ��MutableHashTable}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_22*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�
�
&__inference_conv1d_layer_call_fn_39276

inputs
unknown:2�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_37885}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�"
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38204

inputs"
embedding_38178:	�2#
conv1d_38181:2�
conv1d_38183:	�&
conv1d_1_38186:��
conv1d_1_38188:	�
dense_38192:
��
dense_38194:	�$
predictions_38198:	�
predictions_38200:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�#predictions/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_38178*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_37865�
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_38181conv1d_38183*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_37885�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_38186conv1d_1_38188*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_37907�
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845�
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_38192dense_38194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_37925�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38007�
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0predictions_38198predictions_38200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_37949{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:������������������: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
A__inference_conv1d_layer_call_and_return_conditional_losses_39292

inputsB
+conv1d_expanddims_1_readvariableop_resource:2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#�������������������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:�������������������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_39337

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_37925p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_embedding_layer_call_and_return_conditional_losses_39267

inputs)
embedding_lookup_39261:	�2
identity��embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:�������������������
embedding_lookupResourceGatherembedding_lookup_39261Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/39261*4
_output_shapes"
 :������������������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/39261*4
_output_shapes"
 :������������������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :������������������2�
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�

�
F__inference_predictions_layer_call_and_return_conditional_losses_39395

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
,
__inference__destroyer_39428
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�D
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38447

inputs	3
 embedding_embedding_lookup_38393:	�2I
2conv1d_conv1d_expanddims_1_readvariableop_resource:2�5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
*predictions_matmul_readvariableop_resource:	�9
+predictions_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�embedding/embedding_lookup�"predictions/BiasAdd/ReadVariableOp�!predictions/MatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:����������b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_38393embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/38393*,
_output_shapes
:����������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/38393*,
_output_shapes
:����������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
predictions/MatMulMatMul!dropout/dropout/SelectV2:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitypredictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�D
�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39250

inputs	3
 embedding_embedding_lookup_39196:	�2I
2conv1d_conv1d_expanddims_1_readvariableop_resource:2�5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
*predictions_matmul_readvariableop_resource:	�9
+predictions_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�embedding/embedding_lookup�"predictions/BiasAdd/ReadVariableOp�!predictions/MatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:����������b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:�����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_39196embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/39196*,
_output_shapes
:����������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/39196*,
_output_shapes
:����������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������2g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:2�*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:2��
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������0�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������0�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������0�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������0�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������0��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
predictions/MatMulMatMul!dropout/dropout/SelectV2:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitypredictions/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
:
__inference__creator_39400
identity��
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name10875*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
,
__inference__destroyer_39413
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
k
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_37845

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�f
�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38575

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
conv_model_38555:	�2'
conv_model_38557:2�
conv_model_38559:	�(
conv_model_38561:��
conv_model_38563:	�$
conv_model_38565:
��
conv_model_38567:	�#
conv_model_38569:	�
conv_model_38571:
identity��"Conv-Model/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:���������*
pattern[^a-zA-Z0-9 ]*
rewrite �
'text_vectorization/StaticRegexReplace_1StaticRegexReplace.text_vectorization/StaticRegexReplace:output:0*'
_output_shapes
:���������*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite �
text_vectorization/SqueezeSqueeze0text_vectorization/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"���������       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"Conv-Model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0conv_model_38555conv_model_38557conv_model_38559conv_model_38561conv_model_38563conv_model_38565conv_model_38567conv_model_38569conv_model_38571*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38447z
IdentityIdentity+Conv-Model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv-Model/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"Conv-Model/StatefulPartitionedCall"Conv-Model/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
@__inference_dense_layer_call_and_return_conditional_losses_37925

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_embedding_layer_call_and_return_conditional_losses_37865

inputs)
embedding_lookup_37859:	�2
identity��embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:�������������������
embedding_lookupResourceGatherembedding_lookup_37859Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/37859*4
_output_shapes"
 :������������������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/37859*4
_output_shapes"
 :������������������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :������������������2�
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�F
�	
!__inference__traced_restore_39605
file_prefix8
%assignvariableop_embedding_embeddings:	�27
 assignvariableop_1_conv1d_kernel:2�-
assignvariableop_2_conv1d_bias:	�:
"assignvariableop_3_conv1d_1_kernel:��/
 assignvariableop_4_conv1d_1_bias:	�3
assignvariableop_5_dense_kernel:
��,
assignvariableop_6_dense_bias:	�8
%assignvariableop_7_predictions_kernel:	�1
#assignvariableop_8_predictions_bias:&
assignvariableop_9_iteration:	 +
!assignvariableop_10_learning_rate: 
mutablehashtable: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: 
identity_16��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�StatefulPartitionedCall�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv1d_1_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv1d_1_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_predictions_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_predictions_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_iterationIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0�
StatefulPartitionedCallStatefulPartitionedCallmutablehashtableRestoreV2:tensors:11RestoreV2:tensors:12"/device:CPU:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_restore_from_tensors_39592_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp^StatefulPartitionedCall"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_922
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�
L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
StringInput4
serving_default_StringInput:0���������>

Conv-Model0
StatefulPartitionedCall:0���������tensorflow/serving/predict:ՙ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
_
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
_
0
1
 2
!3
"4
#5
$6
%7
&8"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
,trace_0
-trace_1
.trace_2
/trace_32�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38363
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38849
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38880
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38635�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z,trace_0z-trace_1z.trace_2z/trace_3
�
0trace_0
1trace_1
2trace_2
3trace_32�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38983
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_39093
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38709
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38783�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z0trace_0z1trace_1z2trace_2z3trace_3
�
4	capture_1
5	capture_2
6	capture_3B�
 __inference__wrapped_model_37835StringInput"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
j
7
_variables
8_iterations
9_learning_rate
:_update_step_xla"
experimentalOptimizer
,
;serving_default"
signature_map
"
_generic_user_object
L
<	keras_api
=lookup_table
>token_counts"
_tf_keras_layer
�
?trace_02�
__inference_adapt_step_22524�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z?trace_0
"
_tf_keras_input_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

kernel
 bias
 L_jit_compiled_convolution_op"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

!kernel
"bias
 S_jit_compiled_convolution_op"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
_
0
1
 2
!3
"4
#5
$6
%7
&8"
trackable_list_wrapper
_
0
1
 2
!3
"4
#5
$6
%7
&8"
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_0
strace_1
ttrace_2
utrace_32�
*__inference_Conv-Model_layer_call_fn_37977
*__inference_Conv-Model_layer_call_fn_38146
*__inference_Conv-Model_layer_call_fn_39116
*__inference_Conv-Model_layer_call_fn_39139�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0zstrace_1zttrace_2zutrace_3
�
vtrace_0
wtrace_1
xtrace_2
ytrace_32�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38175
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38204
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39191
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39250�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
':%	�22embedding/embeddings
$:"2�2conv1d/kernel
:�2conv1d/bias
':%��2conv1d_1/kernel
:�2conv1d_1/bias
 :
��2dense/kernel
:�2
dense/bias
%:#	�2predictions/kernel
:2predictions/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
4	capture_1
5	capture_2
6	capture_3B�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38363StringInput"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38849inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38880inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38635StringInput"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38983inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_39093inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38709StringInput"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
�
4	capture_1
5	capture_2
6	capture_3B�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38783StringInput"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
'
80"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
4	capture_1
5	capture_2
6	capture_3B�
#__inference_signature_wrapper_38818StringInput"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z4	capture_1z5	capture_2z6	capture_3
"
_generic_user_object
f
|_initializer
}_create_resource
~_initialize
_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
�
�	capture_1B�
__inference_adapt_step_22524iterator"�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_1
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_embedding_layer_call_fn_39257�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_embedding_layer_call_and_return_conditional_losses_39267�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv1d_layer_call_fn_39276�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_conv1d_layer_call_and_return_conditional_losses_39292�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv1d_1_layer_call_fn_39301�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv1d_1_layer_call_and_return_conditional_losses_39317�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_global_max_pooling1d_layer_call_fn_39322�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_39328�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_39337�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_39348�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_39353
'__inference_dropout_layer_call_fn_39358�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_39363
B__inference_dropout_layer_call_and_return_conditional_losses_39375�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_predictions_layer_call_fn_39384�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_predictions_layer_call_and_return_conditional_losses_39395�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Conv-Model_layer_call_fn_37977inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_Conv-Model_layer_call_fn_38146inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_Conv-Model_layer_call_fn_39116inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_Conv-Model_layer_call_fn_39139inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38175inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38204inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39191inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39250inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
�
�trace_02�
__inference__creator_39400�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_39408�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_39413�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_39418�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_39423�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_39428�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
!J	
Const_2jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_embedding_layer_call_fn_39257inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_embedding_layer_call_and_return_conditional_losses_39267inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_conv1d_layer_call_fn_39276inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv1d_layer_call_and_return_conditional_losses_39292inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv1d_1_layer_call_fn_39301inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv1d_1_layer_call_and_return_conditional_losses_39317inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_global_max_pooling1d_layer_call_fn_39322inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_39328inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_dense_layer_call_fn_39337inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_39348inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dropout_layer_call_fn_39353inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_39358inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_39363inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_39375inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_predictions_layer_call_fn_39384inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_predictions_layer_call_and_return_conditional_losses_39395inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
�B�
__inference__creator_39400"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_39408"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_39413"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_39418"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_39423"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_39428"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�B�
__inference_save_fn_39447checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_39456restored_tensors_0restored_tensors_1"�
���
FullArgSpec
args� 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	�	�
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38709{=456 !"#$%&<�9
2�/
%�"
StringInput���������
p 

 
� ",�)
"�
tensor_0���������
� �
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38783{=456 !"#$%&<�9
2�/
%�"
StringInput���������
p

 
� ",�)
"�
tensor_0���������
� �
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_38983v=456 !"#$%&7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
Q__inference_CONV-PRUNED-SPAM-MODEL_layer_call_and_return_conditional_losses_39093v=456 !"#$%&7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38363p=456 !"#$%&<�9
2�/
%�"
StringInput���������
p 

 
� "!�
unknown����������
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38635p=456 !"#$%&<�9
2�/
%�"
StringInput���������
p

 
� "!�
unknown����������
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38849k=456 !"#$%&7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
6__inference_CONV-PRUNED-SPAM-MODEL_layer_call_fn_38880k=456 !"#$%&7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38175{	 !"#$%&@�=
6�3
)�&
inputs������������������
p 

 
� ",�)
"�
tensor_0���������
� �
E__inference_Conv-Model_layer_call_and_return_conditional_losses_38204{	 !"#$%&@�=
6�3
)�&
inputs������������������
p

 
� ",�)
"�
tensor_0���������
� �
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39191s	 !"#$%&8�5
.�+
!�
inputs����������	
p 

 
� ",�)
"�
tensor_0���������
� �
E__inference_Conv-Model_layer_call_and_return_conditional_losses_39250s	 !"#$%&8�5
.�+
!�
inputs����������	
p

 
� ",�)
"�
tensor_0���������
� �
*__inference_Conv-Model_layer_call_fn_37977p	 !"#$%&@�=
6�3
)�&
inputs������������������
p 

 
� "!�
unknown����������
*__inference_Conv-Model_layer_call_fn_38146p	 !"#$%&@�=
6�3
)�&
inputs������������������
p

 
� "!�
unknown����������
*__inference_Conv-Model_layer_call_fn_39116h	 !"#$%&8�5
.�+
!�
inputs����������	
p 

 
� "!�
unknown����������
*__inference_Conv-Model_layer_call_fn_39139h	 !"#$%&8�5
.�+
!�
inputs����������	
p

 
� "!�
unknown���������?
__inference__creator_39400!�

� 
� "�
unknown ?
__inference__creator_39418!�

� 
� "�
unknown A
__inference__destroyer_39413!�

� 
� "�
unknown A
__inference__destroyer_39428!�

� 
� "�
unknown J
__inference__initializer_39408(=���

� 
� "�
unknown C
__inference__initializer_39423!�

� 
� "�
unknown �
 __inference__wrapped_model_37835~=456 !"#$%&4�1
*�'
%�"
StringInput���������
� "7�4
2

Conv-Model$�!

conv_model���������]
__inference_adapt_step_22524=>�2�/
(�%
#� �	
� IteratorSpec 
� "
 �
C__inference_conv1d_1_layer_call_and_return_conditional_losses_39317!"=�:
3�0
.�+
inputs�������������������
� ":�7
0�-
tensor_0�������������������
� �
(__inference_conv1d_1_layer_call_fn_39301t!"=�:
3�0
.�+
inputs�������������������
� "/�,
unknown��������������������
A__inference_conv1d_layer_call_and_return_conditional_losses_39292~ <�9
2�/
-�*
inputs������������������2
� ":�7
0�-
tensor_0�������������������
� �
&__inference_conv1d_layer_call_fn_39276s <�9
2�/
-�*
inputs������������������2
� "/�,
unknown��������������������
@__inference_dense_layer_call_and_return_conditional_losses_39348e#$0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
%__inference_dense_layer_call_fn_39337Z#$0�-
&�#
!�
inputs����������
� ""�
unknown�����������
B__inference_dropout_layer_call_and_return_conditional_losses_39363e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_39375e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
'__inference_dropout_layer_call_fn_39353Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
'__inference_dropout_layer_call_fn_39358Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
D__inference_embedding_layer_call_and_return_conditional_losses_39267x8�5
.�+
)�&
inputs������������������
� "9�6
/�,
tensor_0������������������2
� �
)__inference_embedding_layer_call_fn_39257m8�5
.�+
)�&
inputs������������������
� ".�+
unknown������������������2�
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_39328~E�B
;�8
6�3
inputs'���������������������������
� "5�2
+�(
tensor_0������������������
� �
4__inference_global_max_pooling1d_layer_call_fn_39322sE�B
;�8
6�3
inputs'���������������������������
� "*�'
unknown�������������������
F__inference_predictions_layer_call_and_return_conditional_losses_39395d%&0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
+__inference_predictions_layer_call_fn_39384Y%&0�-
&�#
!�
inputs����������
� "!�
unknown����������
__inference_restore_fn_39456b>K�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "�
unknown �
__inference_save_fn_39447�>&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor	�
#__inference_signature_wrapper_38818�=456 !"#$%&C�@
� 
9�6
4
StringInput%�"
stringinput���������"7�4
2

Conv-Model$�!

conv_model���������