.class public Lcom/android/settings/display/ColorPaperLikeModeFunc;
.super Ljava/lang/Object;
.source "ColorPaperLikeModeFunc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;,
        Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;
    }
.end annotation


# instance fields
.field colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

.field private initErrortryCount:I

.field private isConnected:Z

.field private isConnecting:Z

.field mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mConnecthandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

.field private retryCount:I

.field private testTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "warmModeListener"    # Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "divhee"

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->retryCount:I

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnecting:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnected:Z

    .line 67
    new-instance v1, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;-><init>(Lcom/android/settings/display/ColorPaperLikeModeFunc;)V

    iput-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mConnecthandler:Landroid/os/Handler;

    .line 121
    iput v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    .line 32
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mContext:Landroid/content/Context;

    .line 34
    new-instance v1, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;-><init>(Lcom/android/settings/display/ColorPaperLikeModeFunc;)V

    iput-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 44
    iput-object p2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnecting:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorManagerConnect()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/display/ColorPaperLikeModeFunc;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    invoke-direct {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setupApplication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/display/ColorPaperLikeModeFunc;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->retryCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/settings/display/ColorPaperLikeModeFunc;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->retryCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/display/ColorPaperLikeModeFunc;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnecting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mConnecthandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/display/ColorPaperLikeModeFunc;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    return-object v0
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 6
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mModeList:Ljava/util/ArrayList;

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 269
    .local v2, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========divhee=======modeDataArray==ModeInfoi==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mModeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;-><init>(Lcom/android/settings/display/ColorPaperLikeModeFunc;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method public static isCurrentModeArePaperLikeMode()I
    .locals 6

    .line 159
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    .line 160
    .local v0, "cmgr":Lcom/qti/snapdragon/sdk/display/ColorManager;
    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isSupportPaperLikeMode()I

    move-result v1

    .line 162
    .local v1, "paperLikeModeID":I
    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getActiveMode()[I

    move-result-object v2

    .line 163
    .local v2, "activieMode":[I
    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    aget v3, v2, v4

    if-lez v3, :cond_0

    aget v3, v2, v4

    if-ne v1, v3, :cond_0

    .line 164
    const-string v3, ""

    const-string v4, "========divhee=========is_CurrentModeArePaperLikeMode===1==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x1

    return v3

    .line 166
    :cond_0
    if-lez v1, :cond_1

    .line 167
    const-string v3, ""

    const-string v5, "========divhee=========is_CurrentModeArePaperLikeMode===0==="

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v4

    .line 170
    :cond_1
    const-string v3, ""

    const-string v4, "========divhee=========is_CurrentModeArePaperLikeMode===-1==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1
    .end local v2
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public static isSupportPaperLikeMode()I
    .locals 8

    .line 128
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    .line 129
    .local v0, "cmgr":Lcom/qti/snapdragon/sdk/display/ColorManager;
    if-eqz v0, :cond_2

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    move-object v1, v2

    .line 133
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 134
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_0
    array-length v3, v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_1

    .line 136
    :try_start_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "modeName":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "xpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v4

    .line 139
    .local v4, "modeID":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========divhee=========is_SupportPaperLikeMode======"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    .line 143
    .end local v3
    .end local v4
    :cond_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    .line 134
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1
    .end local v2
    :cond_1
    goto :goto_2

    .line 146
    :catch_1
    move-exception v1

    .line 149
    :cond_2
    :goto_2
    const/4 v1, -0x1

    return v1
.end method

.method private populateModesOnScreen()Z
    .locals 6

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    const/4 v1, -0x1

    .line 179
    .local v1, "selectedPosition":I
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 180
    const-string v2, "PaperLikeModeFunc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  populateModesOnScreen(): Display SDK manager is null!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v3

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    .line 184
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isInstanceActived()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "========divhee=======modeDataArray====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    invoke-interface {v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;->refreshIcon()V

    .line 190
    :cond_1
    return v2

    .line 192
    :cond_2
    iget v4, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    if-ge v4, v2, :cond_3

    .line 193
    iget v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorManagerError()Z

    move-result v2

    return v2

    .line 196
    :cond_3
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  modeDataArray == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v3
.end method

.method private setupApplication()Z
    .locals 3

    .line 100
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Display ColorManager registered.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 103
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_1

    .line 104
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Failed to get ColorManager instance..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 106
    iget v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->initErrortryCount:I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorManagerError()Z

    move-result v0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isInstanceActived()I

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->populateModesOnScreen()Z

    move-result v0

    .line 118
    .local v0, "isSuccess":Z
    return v0
.end method


# virtual methods
.method public colorManagerConnect()V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnecting:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->retryCount:I

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isConnecting:Z

    .line 62
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mConnecthandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  colorManagerConnect begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public colorManagerError()Z
    .locals 3

    .line 333
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  modeListNullError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isInstanceActived()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 335
    const-string v0, ""

    const-string v1, "===1==divhee==============release==releaseAll="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setupApplication()Z

    move-result v0

    return v0
.end method

.method public getActivityMode()I
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 221
    return v1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getActiveMode()[I

    move-result-object v0

    .line 223
    .local v0, "activieMode":[I
    array-length v2, v0

    if-lez v2, :cond_1

    .line 224
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 226
    :cond_1
    return v1
.end method

.method public getModeIDByName(Ljava/lang/String;)I
    .locals 5
    .param p1, "modeName"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mModeList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorManagerError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mModeList == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;

    .line 239
    .local v3, "mode":Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;
    iget-object v4, v3, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    iget v1, v3, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->modeID:I

    return v1

    .line 242
    .end local v3
    :cond_1
    goto :goto_0

    .line 243
    :cond_2
    return v1
.end method

.method public isInstanceActived()I
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const-string v2, "myApplication"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsApp;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "obj":Ljava/lang/Object;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee============isInstanceActived====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 348
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPaperLikeMode()Z
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getActivityMode()I

    move-result v0

    .line 214
    .local v0, "nowActiveMode":I
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isInstanceActived()I

    .line 215
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xpaper"

    invoke-virtual {p0, v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getModeIDByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "========divhee=========isPaperLikeMode======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getActivityMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "xpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getModeIDByName(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public releaseMyself()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 361
    :cond_0
    return-void
.end method

.method public resetWarmModeListen(Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;)V
    .locals 0
    .param p1, "warmModeListener"    # Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    .line 50
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    .line 51
    return-void
.end method

.method public setActiveMode(I)Z
    .locals 4
    .param p1, "modeID"    # I

    .line 257
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    move-result v0

    .line 259
    .local v0, "iret":I
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee=========setActiveMode=======iret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0
    goto :goto_0

    .line 261
    :cond_0
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  setActiveMode fail,mCmgr = null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultMode(I)Z
    .locals 4
    .param p1, "modeID"    # I

    .line 247
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    move-result v0

    .line 249
    .local v0, "iret":I
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee=========setDefaultMode=======iret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0
    goto :goto_0

    .line 251
    :cond_0
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  setDefaultMode fail,mCmgr = null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setmode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isInstanceActived()I

    .line 276
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-gez p1, :cond_0

    .line 278
    const/4 p1, 0x0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 280
    .local v0, "modeID":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0    # 0x2
    const-string v1, "xpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getModeIDByName(Ljava/lang/String;)I

    move-result v0

    .line 291
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set paperlike mode -----modeID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :pswitch_1    # 0x1
    const-string v1, "warm"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getModeIDByName(Ljava/lang/String;)I

    move-result v0

    .line 287
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set worm mode -----modeID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    goto :goto_0

    .line 282
    :pswitch_2    # 0x0
    const-string v1, "normal"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getModeIDByName(Ljava/lang/String;)I

    move-result v0

    .line 283
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set normol mode -----modeID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    nop

    .line 295
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getActivityMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setActiveMode(I)Z

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setDefaultMode(I)Z

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getActivityMode()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 301
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->testTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set mode error getActivityMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->getActivityMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorManagerError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setActiveMode(I)Z

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setDefaultMode(I)Z

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc;->mWarmModeListener:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    invoke-interface {v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;->refreshIcon()V

    .line 309
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
