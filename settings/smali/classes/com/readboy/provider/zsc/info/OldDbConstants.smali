.class public Lcom/readboy/provider/zsc/info/OldDbConstants;
.super Ljava/lang/Object;
.source "OldDbConstants.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.readboy.personal.personalProvider"

.field public static final FILEROOTPATH:Ljava/lang/String;

.field public static final ICONPATH:Ljava/lang/String;

.field public static IMAGESTRING:Ljava/lang/String;

.field public static final IMGTYPE:Ljava/lang/String; = ".jpg"

.field public static final ROOTFILE:Ljava/lang/String;

.field public static final SUBJECTPATH:Ljava/lang/String;

.field public static T_BIO:Ljava/lang/String;

.field public static T_BLOB:Ljava/lang/String;

.field public static T_CHIID:Ljava/lang/String;

.field public static T_CHMI:Ljava/lang/String;

.field public static T_CITYID:Ljava/lang/String;

.field public static T_CITYSTR:Ljava/lang/String;

.field public static T_DISTRICT:Ljava/lang/String;

.field public static T_ENGLISH:Ljava/lang/String;

.field public static T_GEO:Ljava/lang/String;

.field public static T_GRADE:Ljava/lang/String;

.field public static T_HIS:Ljava/lang/String;

.field public static T_ID:Ljava/lang/String;

.field public static T_MATH:Ljava/lang/String;

.field public static T_PHYSICS:Ljava/lang/String;

.field public static T_POLI:Ljava/lang/String;

.field public static T_PROVINCEID:Ljava/lang/String;

.field public static T_PROVSTR:Ljava/lang/String;

.field public static T_PW:Ljava/lang/String;

.field public static T_REALNAME:Ljava/lang/String;

.field public static T_SCHID:Ljava/lang/String;

.field public static T_SCHSTR:Ljava/lang/String;

.field public static T_SCIEN:Ljava/lang/String;

.field public static T_TOKEN:Ljava/lang/String;

.field public static T_UID:Ljava/lang/String;

.field public static T_USERNAME:Ljava/lang/String;

.field public static final USERINFOPATH:Ljava/lang/String;

.field public static final USERINFO_TABLE:Ljava/lang/String; = "userinfo_data"

.field public static final USER_INFO_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->ROOTFILE:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/readboy/provider/zsc/info/OldDbConstants;->ROOTFILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.readboy/profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->FILEROOTPATH:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/readboy/provider/zsc/info/OldDbConstants;->FILEROOTPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->ICONPATH:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/readboy/provider/zsc/info/OldDbConstants;->FILEROOTPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/userInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->USERINFOPATH:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/readboy/provider/zsc/info/OldDbConstants;->FILEROOTPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/subjectInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->SUBJECTPATH:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/readboy/provider/zsc/info/OldDbConstants;->ROOTFILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/personalImage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->IMAGESTRING:Ljava/lang/String;

    .line 20
    const-string v0, "content://com.readboy.personal.personalProvider/PersonalProvider"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "_id"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_ID:Ljava/lang/String;

    .line 27
    const-string v0, "_imageStr"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_BLOB:Ljava/lang/String;

    .line 28
    const-string v0, "_userName"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_USERNAME:Ljava/lang/String;

    .line 29
    const-string v0, "_realName"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_REALNAME:Ljava/lang/String;

    .line 30
    const-string v0, "_grade"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_GRADE:Ljava/lang/String;

    .line 31
    const-string v0, "_password"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_PW:Ljava/lang/String;

    .line 32
    const-string v0, "_uid"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_UID:Ljava/lang/String;

    .line 33
    const-string v0, "_provinceId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_PROVINCEID:Ljava/lang/String;

    .line 34
    const-string v0, "_cityId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_CITYID:Ljava/lang/String;

    .line 35
    const-string v0, "_districtId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_DISTRICT:Ljava/lang/String;

    .line 36
    const-string v0, "_provStr"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_PROVSTR:Ljava/lang/String;

    .line 37
    const-string v0, "_cityStr"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_CITYSTR:Ljava/lang/String;

    .line 38
    const-string v0, "_schoolStr"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_SCHSTR:Ljava/lang/String;

    .line 39
    const-string v0, "_schoolId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_SCHID:Ljava/lang/String;

    .line 40
    const-string v0, "_chinessPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_CHIID:Ljava/lang/String;

    .line 41
    const-string v0, "_mathPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_MATH:Ljava/lang/String;

    .line 42
    const-string v0, "_englishPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_ENGLISH:Ljava/lang/String;

    .line 43
    const-string v0, "_phyPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_PHYSICS:Ljava/lang/String;

    .line 44
    const-string v0, "_chmPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_CHMI:Ljava/lang/String;

    .line 45
    const-string v0, "_geoPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_GEO:Ljava/lang/String;

    .line 46
    const-string v0, "_hisPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_HIS:Ljava/lang/String;

    .line 47
    const-string v0, "_bioPubId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_BIO:Ljava/lang/String;

    .line 48
    const-string v0, "_poliId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_POLI:Ljava/lang/String;

    .line 49
    const-string v0, "_scienId"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_SCIEN:Ljava/lang/String;

    .line 50
    const-string v0, "_accessToken"

    sput-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
