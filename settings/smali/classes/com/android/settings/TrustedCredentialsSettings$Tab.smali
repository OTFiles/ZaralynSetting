.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mLabel:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 100
    new-instance v9, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const/4 v2, 0x0

    const v4, 0x7f120ea3

    const v5, 0x7f0a044f

    const v6, 0x7f0a044d

    const v7, 0x7f0a0449

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v9, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 106
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v11, "USER"

    const-string v13, "user"

    const/4 v12, 0x1

    const v14, 0x7f120ea5

    const v15, 0x7f0a04cf

    const v16, 0x7f0a04cd

    const v17, 0x7f0a04c2

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "contentView"    # I
    .param p8, "withSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 124
    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    .line 125
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 126
    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    .line 127
    iput-boolean p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 99
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    return v0
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :pswitch_0    # 0x2
    const/4 v0, 0x0

    return v0

    .line 143
    :pswitch_1    # 0x1
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :pswitch_0    # 0x2
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_1    # 0x1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
