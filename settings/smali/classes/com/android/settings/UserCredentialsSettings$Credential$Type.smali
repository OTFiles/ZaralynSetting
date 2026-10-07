.class final enum Lcom/android/settings/UserCredentialsSettings$Credential$Type;
.super Ljava/lang/Enum;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;


# instance fields
.field final prefix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 409
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "CA_CERTIFICATE"

    const-string v2, "CACERT_"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 410
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "USER_CERTIFICATE"

    const-string v2, "USRCERT_"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 411
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "USER_KEY"

    const-string v2, "USRPKEY_"

    const-string v5, "USRSKEY_"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 408
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p3, "prefix"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    .line 417
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 408
    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1

    .line 408
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0}, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method
