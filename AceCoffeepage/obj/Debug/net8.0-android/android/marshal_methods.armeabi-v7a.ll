; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [331 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [656 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 251
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 285
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 293
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 302
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 326
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 15: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 310
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 269
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 269
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 289
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 325
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 318
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 225
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 271
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 223
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 245
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 228
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 247
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 244
	i32 291076382, ; 43: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 323
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 214
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 48: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 301
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 246
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 327
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 59: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 321
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 229
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 445986175, ; 62: AceCoffeepage.dll => 0x1a95357f => 0
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 242
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 244
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 257
	i32 489220957, ; 71: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 299
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 525008092, ; 74: SkiaSharp.dll => 0x1f4afcdc => 207
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 289
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 78: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 320
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 194
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 282
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 280
	i32 571435654, ; 86: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 191
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 90: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 91: Xamarin.AndroidX.CustomView => 0x2568904f => 234
	i32 627931235, ; 92: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 312
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 240
	i32 643868501, ; 94: System.Net => 0x2660a755 => 81
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 276
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 221
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 100: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 101: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 291
	i32 693804605, ; 102: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 103: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 104: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 286
	i32 700358131, ; 105: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 106: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 290
	i32 722857257, ; 107: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 108: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 109: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 110: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 211
	i32 759454413, ; 111: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 112: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 772835674, ; 113: QuestPDF.dll => 0x2e10895a => 206
	i32 775507847, ; 114: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 115: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 318
	i32 778756650, ; 116: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 208
	i32 789151979, ; 117: Microsoft.Extensions.Options => 0x2f0980eb => 197
	i32 790371945, ; 118: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 235
	i32 804008546, ; 119: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 249
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 262
	i32 869139383, ; 127: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 303
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 131: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 317
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 906948815, ; 133: QuestPDF => 0x360ef0cf => 206
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 135: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 314
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 285
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 138: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 290
	i32 961460050, ; 139: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 307
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 283
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 246
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 146: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 316
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 149: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 193
	i32 1001831731, ; 150: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 266
	i32 1019214401, ; 152: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1031528504, ; 154: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 284
	i32 1035644815, ; 155: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 219
	i32 1036536393, ; 156: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 157: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 297
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 253
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 287
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1106973742, ; 164: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 185
	i32 1108272742, ; 165: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 319
	i32 1117529484, ; 166: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 313
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 309
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 252
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 196
	i32 1149092582, ; 170: Xamarin.AndroidX.Window => 0x447dc2e6 => 279
	i32 1168523401, ; 171: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 315
	i32 1170634674, ; 172: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 173: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 189
	i32 1175144683, ; 174: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 275
	i32 1178241025, ; 175: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 260
	i32 1204270330, ; 176: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 221
	i32 1208641965, ; 177: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 280
	i32 1253011324, ; 180: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 181: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 295
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 270
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 274
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 226
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 291
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 218
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 237
	i32 1308624726, ; 188: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 304
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 279
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 193: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 324
	i32 1364015309, ; 194: System.IO => 0x514d38cd => 57
	i32 1370715318, ; 195: AceCoffeepage => 0x51b374b6 => 0
	i32 1373134921, ; 196: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 325
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 266
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 199: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 200: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 230
	i32 1408764838, ; 201: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 202: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 203: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 204: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 293
	i32 1434145427, ; 205: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 206: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 283
	i32 1439761251, ; 207: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 208: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 209: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 210: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 190
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 213: es\Microsoft.Maui.Controls.resources => 0x57152abe => 299
	i32 1461234159, ; 214: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 215: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 216: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 217: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 220
	i32 1470490898, ; 218: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 219: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 221: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 222: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 267
	i32 1521091094, ; 223: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 193
	i32 1526286932, ; 224: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 323
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 228: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 229: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 234: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 236
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 284
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 238: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 239: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 240: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 256
	i32 1622358360, ; 241: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 242: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 278
	i32 1632842087, ; 243: Microsoft.Extensions.Configuration.Json => 0x61533167 => 186
	i32 1635184631, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 240
	i32 1636350590, ; 245: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 233
	i32 1639515021, ; 246: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 247: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 248: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 249: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 272
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 281
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 228
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 288
	i32 1701541528, ; 261: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 249
	i32 1726116996, ; 263: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 264: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 265: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 224
	i32 1743415430, ; 266: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 294
	i32 1744735666, ; 267: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 268: System.IO.Pipelines.dll => 0x68139a0d => 209
	i32 1746316138, ; 269: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 270: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 271: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 272: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 273: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 274: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 275: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 271
	i32 1770582343, ; 276: Microsoft.Extensions.Logging.dll => 0x6988f147 => 194
	i32 1776026572, ; 277: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 278: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 279: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 280: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 310
	i32 1788241197, ; 281: Xamarin.AndroidX.Fragment => 0x6a96652d => 242
	i32 1793755602, ; 282: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 302
	i32 1808609942, ; 283: Xamarin.AndroidX.Loader => 0x6bcd3296 => 256
	i32 1813058853, ; 284: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 287
	i32 1813201214, ; 285: Xamarin.Google.Android.Material => 0x6c13413e => 281
	i32 1818569960, ; 286: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 261
	i32 1818787751, ; 287: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 288: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 289: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 290: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 195
	i32 1847515442, ; 291: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 211
	i32 1853025655, ; 292: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 319
	i32 1858542181, ; 293: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 294: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 295: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 301
	i32 1879696579, ; 296: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 297: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 222
	i32 1888955245, ; 298: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 299: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 300: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 295
	i32 1898237753, ; 301: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 302: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 303: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 304: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 305: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 306
	i32 1956758971, ; 306: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 307: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 268
	i32 1968388702, ; 308: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 309: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 288
	i32 1985761444, ; 310: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 213
	i32 2003115576, ; 311: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 298
	i32 2011961780, ; 312: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 313: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 253
	i32 2031763787, ; 314: Xamarin.Android.Glide => 0x791a414b => 210
	i32 2045470958, ; 315: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 316: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 317: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 248
	i32 2060060697, ; 318: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 319: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 297
	i32 2070888862, ; 320: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 321: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 192
	i32 2079903147, ; 322: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 323: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 324: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 325: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 326: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 327: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 328: Microsoft.Maui => 0x80bd55ad => 203
	i32 2169148018, ; 329: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 305
	i32 2181898931, ; 330: Microsoft.Extensions.Options.dll => 0x820d22b3 => 197
	i32 2192057212, ; 331: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 195
	i32 2193016926, ; 332: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 333: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 292
	i32 2201231467, ; 334: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 335: it\Microsoft.Maui.Controls.resources => 0x839595db => 307
	i32 2217644978, ; 336: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 275
	i32 2222056684, ; 337: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 338: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 257
	i32 2252106437, ; 339: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 340: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 341: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 342: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 343: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 212
	i32 2279755925, ; 344: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 264
	i32 2293034957, ; 345: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 346: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 347: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 348: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 311
	i32 2305521784, ; 349: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 350: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 216
	i32 2320631194, ; 351: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 352: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 353: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 354: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 355: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 305
	i32 2368005991, ; 356: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 357: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 358: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 359: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 360: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 306
	i32 2401565422, ; 361: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 362: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 239
	i32 2411328690, ; 363: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2421380589, ; 364: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 365: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 226
	i32 2427813419, ; 366: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 303
	i32 2435356389, ; 367: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 368: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 369: Microsoft.JSInterop.dll => 0x919672ca => 199
	i32 2454642406, ; 370: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 371: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 372: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 373: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 229
	i32 2471841756, ; 374: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 375: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 376: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 377: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 378: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 379: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 380: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 381: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 309
	i32 2505896520, ; 382: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 251
	i32 2522472828, ; 383: Xamarin.Android.Glide.dll => 0x9659e17c => 210
	i32 2537015816, ; 384: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 385: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 386: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 304
	i32 2562349572, ; 387: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 388: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 389: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 308
	i32 2581783588, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 252
	i32 2581819634, ; 391: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 274
	i32 2585220780, ; 392: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 393: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 394: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 395: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 396: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 189
	i32 2593496499, ; 397: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 313
	i32 2605712449, ; 398: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 292
	i32 2615233544, ; 399: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 243
	i32 2616218305, ; 400: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 196
	i32 2617129537, ; 401: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 402: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 403: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 233
	i32 2624644809, ; 404: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 238
	i32 2626831493, ; 405: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 308
	i32 2627185994, ; 406: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 407: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 408: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 247
	i32 2663391936, ; 409: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 212
	i32 2663698177, ; 410: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 411: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 412: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 413: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 414: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 415: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 416: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 417: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 272
	i32 2715334215, ; 418: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 419: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 420: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 421: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 422: Xamarin.AndroidX.Activity => 0xa2e0939b => 214
	i32 2735172069, ; 423: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 424: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 425: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 220
	i32 2740698338, ; 426: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 294
	i32 2740948882, ; 427: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 428: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 429: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 314
	i32 2758225723, ; 430: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 431: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 432: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 433: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 286
	i32 2778768386, ; 434: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 277
	i32 2779977773, ; 435: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 265
	i32 2785988530, ; 436: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 320
	i32 2788224221, ; 437: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 243
	i32 2801831435, ; 438: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 439: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 440: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 230
	i32 2819470561, ; 441: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 442: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 443: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 265
	i32 2824502124, ; 444: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 445: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 446: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 254
	i32 2849599387, ; 447: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 448: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 277
	i32 2855708567, ; 449: Xamarin.AndroidX.Transition => 0xaa36a797 => 273
	i32 2861098320, ; 450: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 451: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 452: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 215
	i32 2875164099, ; 453: Jsr305Binding.dll => 0xab5f85c3 => 282
	i32 2875220617, ; 454: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 455: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 241
	i32 2887636118, ; 456: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 457: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 458: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 459: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 460: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 461: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 462: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 463: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 192
	i32 2916838712, ; 464: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 278
	i32 2919462931, ; 465: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 466: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 217
	i32 2936416060, ; 467: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 468: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 469: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 470: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 471: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 472: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 473: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 237
	i32 2987532451, ; 474: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 268
	i32 2996846495, ; 475: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 250
	i32 3016983068, ; 476: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 270
	i32 3023353419, ; 477: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 478: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 245
	i32 3038032645, ; 479: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 327
	i32 3053864966, ; 480: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 300
	i32 3056245963, ; 481: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 267
	i32 3057625584, ; 482: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 258
	i32 3059408633, ; 483: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 484: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 485: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 486: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 487: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 488: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 489: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 490: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 491: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 492: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 493: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 494: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 495: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 496: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 497: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 259
	i32 3192346100, ; 498: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 499: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 500: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 501: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 502: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 236
	i32 3220365878, ; 503: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 504: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 505: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 506: Xamarin.AndroidX.CardView => 0xc235e84d => 224
	i32 3265493905, ; 507: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 508: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 509: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 510: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 511: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 512: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 513: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 514: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 515: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 300
	i32 3316684772, ; 516: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 517: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 234
	i32 3317144872, ; 518: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 519: SkiaSharp => 0xc71a4669 => 207
	i32 3340431453, ; 520: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 222
	i32 3345895724, ; 521: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 263
	i32 3346324047, ; 522: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 260
	i32 3357674450, ; 523: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 317
	i32 3358260929, ; 524: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 525: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 215
	i32 3362522851, ; 526: Xamarin.AndroidX.Core => 0xc86c06e3 => 231
	i32 3366347497, ; 527: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 528: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 264
	i32 3381016424, ; 529: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 296
	i32 3395150330, ; 530: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 531: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 532: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 235
	i32 3406629867, ; 533: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 190
	i32 3421170118, ; 534: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 535: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 536: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 537: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 538: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 238
	i32 3445260447, ; 539: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 540: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3458724246, ; 541: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 315
	i32 3464190856, ; 542: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 543: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 544: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 545: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 316
	i32 3485117614, ; 546: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 547: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 548: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 227
	i32 3500000672, ; 549: Microsoft.JSInterop => 0xd09dc5a0 => 199
	i32 3509114376, ; 550: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 551: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 552: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 553: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 554: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 555: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 556: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 324
	i32 3592228221, ; 557: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 326
	i32 3597029428, ; 558: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 213
	i32 3598340787, ; 559: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 560: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 561: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 562: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 262
	i32 3633644679, ; 563: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 217
	i32 3638274909, ; 564: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 565: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 248
	i32 3643446276, ; 566: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 321
	i32 3643854240, ; 567: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 259
	i32 3645089577, ; 568: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 569: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 570: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 571: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 572: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 223
	i32 3684561358, ; 573: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 227
	i32 3700866549, ; 574: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 575: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 232
	i32 3716563718, ; 576: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 577: Xamarin.AndroidX.Annotation => 0xdda814c6 => 216
	i32 3722202641, ; 578: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 186
	i32 3724971120, ; 579: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 258
	i32 3732100267, ; 580: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 581: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 582: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 583: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 584: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 585: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 296
	i32 3758424670, ; 586: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 185
	i32 3786282454, ; 587: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 225
	i32 3792276235, ; 588: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3792835768, ; 589: HarfBuzzSharp => 0xe21214b8 => 174
	i32 3800979733, ; 590: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 591: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 592: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 593: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 594: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 595: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 596: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 597: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 598: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 599: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 600: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 601: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 602: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 273
	i32 3888767677, ; 603: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 263
	i32 3896106733, ; 604: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 605: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 231
	i32 3901907137, ; 606: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 607: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 312
	i32 3920810846, ; 608: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 609: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 276
	i32 3928044579, ; 610: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 611: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 612: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 261
	i32 3945713374, ; 613: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 614: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 615: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 219
	i32 3959773229, ; 616: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 250
	i32 4003436829, ; 617: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4003906742, ; 618: HarfBuzzSharp.dll => 0xeea6c4b6 => 174
	i32 4015948917, ; 619: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 218
	i32 4023392905, ; 620: System.IO.Pipelines => 0xefd01a89 => 209
	i32 4025784931, ; 621: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 622: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 623: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4066802364, ; 624: SkiaSharp.HarfBuzz => 0xf2667abc => 208
	i32 4068434129, ; 625: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 626: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 627: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 298
	i32 4094352644, ; 628: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 629: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 630: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 631: Xamarin.AndroidX.Emoji2 => 0xf479582c => 239
	i32 4103439459, ; 632: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 322
	i32 4126470640, ; 633: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 634: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 635: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 636: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 637: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 322
	i32 4151237749, ; 638: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 639: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 640: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 641: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 642: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 643: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 255
	i32 4185676441, ; 644: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 645: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 646: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 647: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 311
	i32 4256097574, ; 648: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 232
	i32 4258378803, ; 649: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 254
	i32 4260525087, ; 650: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 651: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274976490, ; 652: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 653: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 255
	i32 4294648842, ; 654: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 191
	i32 4294763496 ; 655: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 241
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [656 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 251, ; 3
	i32 285, ; 4
	i32 48, ; 5
	i32 293, ; 6
	i32 80, ; 7
	i32 302, ; 8
	i32 145, ; 9
	i32 30, ; 10
	i32 326, ; 11
	i32 124, ; 12
	i32 205, ; 13
	i32 102, ; 14
	i32 310, ; 15
	i32 269, ; 16
	i32 107, ; 17
	i32 269, ; 18
	i32 139, ; 19
	i32 289, ; 20
	i32 325, ; 21
	i32 318, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 225, ; 26
	i32 132, ; 27
	i32 271, ; 28
	i32 151, ; 29
	i32 18, ; 30
	i32 223, ; 31
	i32 26, ; 32
	i32 245, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 176, ; 38
	i32 228, ; 39
	i32 147, ; 40
	i32 247, ; 41
	i32 244, ; 42
	i32 54, ; 43
	i32 69, ; 44
	i32 323, ; 45
	i32 214, ; 46
	i32 83, ; 47
	i32 301, ; 48
	i32 246, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 327, ; 57
	i32 165, ; 58
	i32 321, ; 59
	i32 229, ; 60
	i32 12, ; 61
	i32 0, ; 62
	i32 242, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 244, ; 69
	i32 257, ; 70
	i32 299, ; 71
	i32 84, ; 72
	i32 198, ; 73
	i32 207, ; 74
	i32 150, ; 75
	i32 289, ; 76
	i32 60, ; 77
	i32 320, ; 78
	i32 194, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 282, ; 84
	i32 280, ; 85
	i32 191, ; 86
	i32 120, ; 87
	i32 52, ; 88
	i32 44, ; 89
	i32 119, ; 90
	i32 234, ; 91
	i32 312, ; 92
	i32 240, ; 93
	i32 81, ; 94
	i32 136, ; 95
	i32 276, ; 96
	i32 221, ; 97
	i32 8, ; 98
	i32 73, ; 99
	i32 155, ; 100
	i32 291, ; 101
	i32 154, ; 102
	i32 92, ; 103
	i32 286, ; 104
	i32 45, ; 105
	i32 290, ; 106
	i32 109, ; 107
	i32 129, ; 108
	i32 25, ; 109
	i32 211, ; 110
	i32 72, ; 111
	i32 55, ; 112
	i32 206, ; 113
	i32 46, ; 114
	i32 318, ; 115
	i32 208, ; 116
	i32 197, ; 117
	i32 235, ; 118
	i32 180, ; 119
	i32 22, ; 120
	i32 249, ; 121
	i32 86, ; 122
	i32 43, ; 123
	i32 160, ; 124
	i32 71, ; 125
	i32 262, ; 126
	i32 303, ; 127
	i32 3, ; 128
	i32 42, ; 129
	i32 63, ; 130
	i32 317, ; 131
	i32 16, ; 132
	i32 206, ; 133
	i32 53, ; 134
	i32 314, ; 135
	i32 285, ; 136
	i32 105, ; 137
	i32 290, ; 138
	i32 307, ; 139
	i32 283, ; 140
	i32 246, ; 141
	i32 34, ; 142
	i32 158, ; 143
	i32 85, ; 144
	i32 32, ; 145
	i32 316, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 193, ; 149
	i32 56, ; 150
	i32 266, ; 151
	i32 36, ; 152
	i32 188, ; 153
	i32 284, ; 154
	i32 219, ; 155
	i32 35, ; 156
	i32 297, ; 157
	i32 58, ; 158
	i32 253, ; 159
	i32 173, ; 160
	i32 17, ; 161
	i32 287, ; 162
	i32 164, ; 163
	i32 185, ; 164
	i32 319, ; 165
	i32 313, ; 166
	i32 309, ; 167
	i32 252, ; 168
	i32 196, ; 169
	i32 279, ; 170
	i32 315, ; 171
	i32 153, ; 172
	i32 189, ; 173
	i32 275, ; 174
	i32 260, ; 175
	i32 221, ; 176
	i32 29, ; 177
	i32 52, ; 178
	i32 280, ; 179
	i32 5, ; 180
	i32 295, ; 181
	i32 270, ; 182
	i32 274, ; 183
	i32 226, ; 184
	i32 291, ; 185
	i32 218, ; 186
	i32 237, ; 187
	i32 304, ; 188
	i32 85, ; 189
	i32 279, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 324, ; 193
	i32 57, ; 194
	i32 0, ; 195
	i32 325, ; 196
	i32 266, ; 197
	i32 99, ; 198
	i32 19, ; 199
	i32 230, ; 200
	i32 111, ; 201
	i32 101, ; 202
	i32 102, ; 203
	i32 293, ; 204
	i32 104, ; 205
	i32 283, ; 206
	i32 71, ; 207
	i32 38, ; 208
	i32 32, ; 209
	i32 190, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 299, ; 213
	i32 9, ; 214
	i32 123, ; 215
	i32 46, ; 216
	i32 220, ; 217
	i32 198, ; 218
	i32 9, ; 219
	i32 43, ; 220
	i32 4, ; 221
	i32 267, ; 222
	i32 193, ; 223
	i32 323, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 180, ; 228
	i32 93, ; 229
	i32 49, ; 230
	i32 141, ; 231
	i32 112, ; 232
	i32 140, ; 233
	i32 236, ; 234
	i32 115, ; 235
	i32 284, ; 236
	i32 157, ; 237
	i32 76, ; 238
	i32 79, ; 239
	i32 256, ; 240
	i32 37, ; 241
	i32 278, ; 242
	i32 186, ; 243
	i32 240, ; 244
	i32 233, ; 245
	i32 64, ; 246
	i32 138, ; 247
	i32 15, ; 248
	i32 179, ; 249
	i32 116, ; 250
	i32 272, ; 251
	i32 281, ; 252
	i32 228, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 94, ; 258
	i32 121, ; 259
	i32 288, ; 260
	i32 26, ; 261
	i32 249, ; 262
	i32 97, ; 263
	i32 28, ; 264
	i32 224, ; 265
	i32 294, ; 266
	i32 149, ; 267
	i32 209, ; 268
	i32 169, ; 269
	i32 4, ; 270
	i32 98, ; 271
	i32 178, ; 272
	i32 33, ; 273
	i32 93, ; 274
	i32 271, ; 275
	i32 194, ; 276
	i32 21, ; 277
	i32 41, ; 278
	i32 170, ; 279
	i32 310, ; 280
	i32 242, ; 281
	i32 302, ; 282
	i32 256, ; 283
	i32 287, ; 284
	i32 281, ; 285
	i32 261, ; 286
	i32 2, ; 287
	i32 134, ; 288
	i32 111, ; 289
	i32 195, ; 290
	i32 211, ; 291
	i32 319, ; 292
	i32 58, ; 293
	i32 95, ; 294
	i32 301, ; 295
	i32 39, ; 296
	i32 222, ; 297
	i32 25, ; 298
	i32 94, ; 299
	i32 295, ; 300
	i32 89, ; 301
	i32 99, ; 302
	i32 10, ; 303
	i32 87, ; 304
	i32 306, ; 305
	i32 100, ; 306
	i32 268, ; 307
	i32 182, ; 308
	i32 288, ; 309
	i32 213, ; 310
	i32 298, ; 311
	i32 7, ; 312
	i32 253, ; 313
	i32 210, ; 314
	i32 88, ; 315
	i32 184, ; 316
	i32 248, ; 317
	i32 154, ; 318
	i32 297, ; 319
	i32 33, ; 320
	i32 192, ; 321
	i32 116, ; 322
	i32 82, ; 323
	i32 20, ; 324
	i32 11, ; 325
	i32 162, ; 326
	i32 3, ; 327
	i32 203, ; 328
	i32 305, ; 329
	i32 197, ; 330
	i32 195, ; 331
	i32 84, ; 332
	i32 292, ; 333
	i32 64, ; 334
	i32 307, ; 335
	i32 275, ; 336
	i32 143, ; 337
	i32 257, ; 338
	i32 157, ; 339
	i32 41, ; 340
	i32 117, ; 341
	i32 183, ; 342
	i32 212, ; 343
	i32 264, ; 344
	i32 131, ; 345
	i32 75, ; 346
	i32 66, ; 347
	i32 311, ; 348
	i32 172, ; 349
	i32 216, ; 350
	i32 143, ; 351
	i32 106, ; 352
	i32 151, ; 353
	i32 70, ; 354
	i32 305, ; 355
	i32 156, ; 356
	i32 182, ; 357
	i32 121, ; 358
	i32 127, ; 359
	i32 306, ; 360
	i32 152, ; 361
	i32 239, ; 362
	i32 176, ; 363
	i32 141, ; 364
	i32 226, ; 365
	i32 303, ; 366
	i32 20, ; 367
	i32 14, ; 368
	i32 199, ; 369
	i32 135, ; 370
	i32 75, ; 371
	i32 59, ; 372
	i32 229, ; 373
	i32 167, ; 374
	i32 168, ; 375
	i32 201, ; 376
	i32 15, ; 377
	i32 74, ; 378
	i32 6, ; 379
	i32 23, ; 380
	i32 309, ; 381
	i32 251, ; 382
	i32 210, ; 383
	i32 175, ; 384
	i32 91, ; 385
	i32 304, ; 386
	i32 1, ; 387
	i32 136, ; 388
	i32 308, ; 389
	i32 252, ; 390
	i32 274, ; 391
	i32 134, ; 392
	i32 69, ; 393
	i32 177, ; 394
	i32 146, ; 395
	i32 189, ; 396
	i32 313, ; 397
	i32 292, ; 398
	i32 243, ; 399
	i32 196, ; 400
	i32 88, ; 401
	i32 96, ; 402
	i32 233, ; 403
	i32 238, ; 404
	i32 308, ; 405
	i32 31, ; 406
	i32 45, ; 407
	i32 247, ; 408
	i32 212, ; 409
	i32 109, ; 410
	i32 158, ; 411
	i32 35, ; 412
	i32 22, ; 413
	i32 114, ; 414
	i32 179, ; 415
	i32 57, ; 416
	i32 272, ; 417
	i32 144, ; 418
	i32 118, ; 419
	i32 120, ; 420
	i32 110, ; 421
	i32 214, ; 422
	i32 139, ; 423
	i32 175, ; 424
	i32 220, ; 425
	i32 294, ; 426
	i32 54, ; 427
	i32 105, ; 428
	i32 314, ; 429
	i32 202, ; 430
	i32 203, ; 431
	i32 133, ; 432
	i32 286, ; 433
	i32 277, ; 434
	i32 265, ; 435
	i32 320, ; 436
	i32 243, ; 437
	i32 205, ; 438
	i32 159, ; 439
	i32 230, ; 440
	i32 163, ; 441
	i32 132, ; 442
	i32 265, ; 443
	i32 161, ; 444
	i32 181, ; 445
	i32 254, ; 446
	i32 140, ; 447
	i32 277, ; 448
	i32 273, ; 449
	i32 169, ; 450
	i32 204, ; 451
	i32 215, ; 452
	i32 282, ; 453
	i32 40, ; 454
	i32 241, ; 455
	i32 81, ; 456
	i32 178, ; 457
	i32 56, ; 458
	i32 37, ; 459
	i32 97, ; 460
	i32 166, ; 461
	i32 172, ; 462
	i32 192, ; 463
	i32 278, ; 464
	i32 82, ; 465
	i32 217, ; 466
	i32 98, ; 467
	i32 30, ; 468
	i32 159, ; 469
	i32 18, ; 470
	i32 127, ; 471
	i32 119, ; 472
	i32 237, ; 473
	i32 268, ; 474
	i32 250, ; 475
	i32 270, ; 476
	i32 165, ; 477
	i32 245, ; 478
	i32 327, ; 479
	i32 300, ; 480
	i32 267, ; 481
	i32 258, ; 482
	i32 170, ; 483
	i32 16, ; 484
	i32 144, ; 485
	i32 125, ; 486
	i32 118, ; 487
	i32 38, ; 488
	i32 115, ; 489
	i32 47, ; 490
	i32 142, ; 491
	i32 117, ; 492
	i32 34, ; 493
	i32 173, ; 494
	i32 95, ; 495
	i32 53, ; 496
	i32 259, ; 497
	i32 129, ; 498
	i32 153, ; 499
	i32 24, ; 500
	i32 161, ; 501
	i32 236, ; 502
	i32 148, ; 503
	i32 104, ; 504
	i32 89, ; 505
	i32 224, ; 506
	i32 60, ; 507
	i32 142, ; 508
	i32 100, ; 509
	i32 5, ; 510
	i32 13, ; 511
	i32 122, ; 512
	i32 135, ; 513
	i32 28, ; 514
	i32 300, ; 515
	i32 72, ; 516
	i32 234, ; 517
	i32 24, ; 518
	i32 207, ; 519
	i32 222, ; 520
	i32 263, ; 521
	i32 260, ; 522
	i32 317, ; 523
	i32 137, ; 524
	i32 215, ; 525
	i32 231, ; 526
	i32 168, ; 527
	i32 264, ; 528
	i32 296, ; 529
	i32 101, ; 530
	i32 123, ; 531
	i32 235, ; 532
	i32 190, ; 533
	i32 184, ; 534
	i32 187, ; 535
	i32 163, ; 536
	i32 167, ; 537
	i32 238, ; 538
	i32 39, ; 539
	i32 200, ; 540
	i32 315, ; 541
	i32 177, ; 542
	i32 17, ; 543
	i32 171, ; 544
	i32 316, ; 545
	i32 137, ; 546
	i32 150, ; 547
	i32 227, ; 548
	i32 199, ; 549
	i32 155, ; 550
	i32 130, ; 551
	i32 19, ; 552
	i32 65, ; 553
	i32 147, ; 554
	i32 47, ; 555
	i32 324, ; 556
	i32 326, ; 557
	i32 213, ; 558
	i32 79, ; 559
	i32 61, ; 560
	i32 106, ; 561
	i32 262, ; 562
	i32 217, ; 563
	i32 49, ; 564
	i32 248, ; 565
	i32 321, ; 566
	i32 259, ; 567
	i32 14, ; 568
	i32 183, ; 569
	i32 68, ; 570
	i32 171, ; 571
	i32 223, ; 572
	i32 227, ; 573
	i32 78, ; 574
	i32 232, ; 575
	i32 108, ; 576
	i32 216, ; 577
	i32 186, ; 578
	i32 258, ; 579
	i32 67, ; 580
	i32 181, ; 581
	i32 63, ; 582
	i32 27, ; 583
	i32 160, ; 584
	i32 296, ; 585
	i32 185, ; 586
	i32 225, ; 587
	i32 10, ; 588
	i32 174, ; 589
	i32 200, ; 590
	i32 11, ; 591
	i32 78, ; 592
	i32 126, ; 593
	i32 83, ; 594
	i32 188, ; 595
	i32 66, ; 596
	i32 107, ; 597
	i32 65, ; 598
	i32 128, ; 599
	i32 122, ; 600
	i32 77, ; 601
	i32 273, ; 602
	i32 263, ; 603
	i32 8, ; 604
	i32 231, ; 605
	i32 2, ; 606
	i32 312, ; 607
	i32 44, ; 608
	i32 276, ; 609
	i32 156, ; 610
	i32 128, ; 611
	i32 261, ; 612
	i32 23, ; 613
	i32 133, ; 614
	i32 219, ; 615
	i32 250, ; 616
	i32 29, ; 617
	i32 174, ; 618
	i32 218, ; 619
	i32 209, ; 620
	i32 62, ; 621
	i32 202, ; 622
	i32 90, ; 623
	i32 208, ; 624
	i32 87, ; 625
	i32 148, ; 626
	i32 298, ; 627
	i32 204, ; 628
	i32 36, ; 629
	i32 86, ; 630
	i32 239, ; 631
	i32 322, ; 632
	i32 187, ; 633
	i32 50, ; 634
	i32 6, ; 635
	i32 90, ; 636
	i32 322, ; 637
	i32 21, ; 638
	i32 162, ; 639
	i32 96, ; 640
	i32 50, ; 641
	i32 113, ; 642
	i32 255, ; 643
	i32 130, ; 644
	i32 76, ; 645
	i32 27, ; 646
	i32 311, ; 647
	i32 232, ; 648
	i32 254, ; 649
	i32 7, ; 650
	i32 201, ; 651
	i32 110, ; 652
	i32 255, ; 653
	i32 191, ; 654
	i32 241 ; 655
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
