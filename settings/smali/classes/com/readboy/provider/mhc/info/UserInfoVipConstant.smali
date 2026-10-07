.class public Lcom/readboy/provider/mhc/info/UserInfoVipConstant;
.super Ljava/lang/Object;
.source "UserInfoVipConstant.java"


# static fields
.field public static final AUTHORITY_ENCRYPT:Ljava/lang/String; = "com.readboy.personal.PersonalExtraProvider"

.field public static final USERINFO_VIP_TABLE:Ljava/lang/String; = "user_info_vip_data"

.field public static final USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

.field public static final V_END_TIME:Ljava/lang/String; = "end_time"

.field public static final V_ID:Ljava/lang/String; = "id"

.field public static final V_START_TIME:Ljava/lang/String; = "start_time"

.field public static final V_UID:Ljava/lang/String; = "uid"

.field public static final V_VIP_EXP:Ljava/lang/String; = "vip_exp"

.field public static final V_VIP_NAME:Ljava/lang/String; = "vip_name"

.field public static final V_VIP_POINTS:Ljava/lang/String; = "vip_points"

.field public static final V_VIP_STATUS:Ljava/lang/String; = "vip_status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "content://com.readboy.personal.PersonalExtraProvider/user_info_vip_data"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/UserInfoVipConstant;->USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
