.class public Lcom/android/settings/DisplayColorTempSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplayColorTempSettings.java"


# static fields
.field public static final URL_WARM_MODE:Landroid/net/Uri;


# instance fields
.field private final KEY_COLOR_MANGER_TEMP:Ljava/lang/String;

.field private cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private colorTemp:I

.field private defautlColorTemp:I

.field private lowerColorTemp:I

.field private mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

.field private mCMSeekBar_Callback:Lcom/android/settings/CMSeekBarPreference$Callback;

.field private mColorTempObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mRunable:Ljava/lang/Runnable;

.field private upperColorTemp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const-string v0, "content://com.dream.launcher_provider_new/switch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DisplayColorTempSettings;->URL_WARM_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mHandler:Landroid/os/Handler;

    .line 29
    const-string v0, "color_manager_temp_pref"

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->KEY_COLOR_MANGER_TEMP:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    .line 34
    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    .line 35
    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    .line 159
    new-instance v0, Lcom/android/settings/DisplayColorTempSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplayColorTempSettings$2;-><init>(Lcom/android/settings/DisplayColorTempSettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBar_Callback:Lcom/android/settings/CMSeekBarPreference$Callback;

    .line 340
    new-instance v0, Lcom/android/settings/DisplayColorTempSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplayColorTempSettings$3;-><init>(Lcom/android/settings/DisplayColorTempSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mColorTempObserver:Landroid/database/ContentObserver;

    .line 348
    new-instance v0, Lcom/android/settings/DisplayColorTempSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplayColorTempSettings$4;-><init>(Lcom/android/settings/DisplayColorTempSettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplayColorTempSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    invoke-direct {p0}, Lcom/android/settings/DisplayColorTempSettings;->getColorBalanceInstance()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplayColorTempSettings;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplayColorTempSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/DisplayColorTempSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/DisplayColorTempSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplayColorTempSettings;)Lcom/android/settings/CMSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplayColorTempSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplayColorTempSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 23
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorBalanceInstance()V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x64

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "isSupport":Z
    iget-object v6, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    iget-object v5, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/CMSeekBarPreference;->setCallback(Lcom/android/settings/CMSeekBarPreference$Callback;)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/CMSeekBarPreference;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/CMSeekBarPreference;->setMax(I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/CMSeekBarPreference;->setProgress(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_manager_temp_value"

    iget v3, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_manager_temp_value"

    const/16 v6, 0x168

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "saveValue":I
    if-eq v1, v6, :cond_2

    .line 92
    iput v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    .line 93
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v6, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    invoke-virtual {v2, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getColorBalance()I

    move-result v2

    iput v2, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    .line 96
    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    const/16 v6, -0x64

    if-lt v2, v6, :cond_3

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    if-le v2, v4, :cond_4

    .line 98
    :cond_3
    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    iput v2, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    .line 102
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/CMSeekBarPreference;->setEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/CMSeekBarPreference;->setMax(I)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getNowSeekBarPostion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/CMSeekBarPreference;->setProgress(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_manager_temp_value"

    iget v5, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-100=======divhee======colorTemp===100===colorTemp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "==="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    iget-object v3, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBar_Callback:Lcom/android/settings/CMSeekBarPreference$Callback;

    invoke-virtual {v2, v3}, Lcom/android/settings/CMSeekBarPreference;->setCallback(Lcom/android/settings/CMSeekBarPreference$Callback;)V

    .line 108
    .end local v0
    .end local v1
    goto :goto_1

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/CMSeekBarPreference;->setCallback(Lcom/android/settings/CMSeekBarPreference$Callback;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/CMSeekBarPreference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/CMSeekBarPreference;->setMax(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/CMSeekBarPreference;->setProgress(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_manager_temp_value"

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :goto_1
    return-void
.end method

.method public static isCanResetColorTemp(Landroid/content/Context;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "andPaperLikeMode"    # Z

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "isCanReset":Z
    const/4 v1, 0x0

    .line 205
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 206
    .local v2, "value":I
    if-nez p0, :cond_0

    .line 207
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object p0

    .line 210
    :cond_0
    :try_start_0
    const-string v3, ""

    const-string v4, "======divhee======isCanResetColorTemp=====1==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/DisplayColorTempSettings;->URL_WARM_MODE:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "switchName=?"

    const-string v3, "switch_warm_mode"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 212
    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "switchNum"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 221
    :cond_1
    if-eqz v1, :cond_2

    .line 223
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v3

    goto/16 :goto_7

    .line 217
    :catch_1
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======divhee======isCanResetColorTemp=====405==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 223
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    goto :goto_1

    .line 224
    :catch_2
    move-exception v3

    .line 227
    :goto_1
    const/4 v1, 0x0

    .line 230
    :cond_2
    const/4 v3, 0x0

    move v4, v3

    .line 232
    .local v4, "valueDark":I
    :try_start_4
    const-string v5, ""

    const-string v6, "======divhee======isCanResetColorTemp=====10==="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/settings/DisplayColorTempSettings;->URL_WARM_MODE:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "switchName=?"

    const-string v5, "switch_display_daltonizer"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v1, v5

    .line 234
    if-eqz v1, :cond_3

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    const-string v5, "switchNum"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v5

    .line 242
    :cond_3
    if-eqz v1, :cond_4

    .line 244
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 245
    :catch_3
    move-exception v5

    goto :goto_3

    .line 242
    :catchall_1
    move-exception v3

    goto/16 :goto_5

    .line 239
    :catch_4
    move-exception v5

    .line 240
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "======divhee======isCanResetColorTemp=====406==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    .line 244
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_2
    goto :goto_3

    .line 245
    :catch_5
    move-exception v5

    .line 248
    :goto_3
    const/4 v1, 0x0

    .line 252
    :cond_4
    const/4 v5, 0x1

    if-nez p1, :cond_6

    .line 254
    if-eq v2, v5, :cond_5

    if-eq v4, v5, :cond_5

    move v3, v5

    nop

    :cond_5
    move v0, v3

    goto :goto_4

    .line 256
    :cond_6
    invoke-static {}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isCurrentModeArePaperLikeMode()I

    move-result v6

    .line 257
    .local v6, "isPaperLikeMode":I
    if-eq v2, v5, :cond_7

    if-eq v4, v5, :cond_7

    if-gtz v6, :cond_7

    move v3, v5

    nop

    :cond_7
    move v0, v3

    .line 260
    .end local v6
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "rb_qti_display_mode"

    const/4 v6, -0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 261
    .local v3, "colorTempStatus":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "======divhee======isCanResetColorTemp=====3==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "==andPaperLikeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v0

    .line 242
    .end local v3
    :goto_5
    if-eqz v1, :cond_8

    .line 244
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    .line 245
    :catch_6
    move-exception v5

    .line 248
    :goto_6
    const/4 v1, 0x0

    :cond_8
    throw v3

    .line 221
    .end local v4
    :goto_7
    if-eqz v1, :cond_9

    .line 223
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    .line 224
    :catch_7
    move-exception v4

    .line 227
    :goto_8
    const/4 v1, 0x0

    :cond_9
    throw v3
.end method

.method public static resetColorTempWhenStatusChangeEvent(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 292
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    .line 293
    .local v0, "cmgr":Lcom/qti/snapdragon/sdk/display/ColorManager;
    if-eqz v0, :cond_a

    .line 294
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "isSupport":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v2

    .line 298
    .local v2, "middleColorTemp":I
    const/16 v3, -0x64

    .line 299
    .local v3, "minColorTemp":I
    const/16 v4, 0x64

    .line 300
    .local v4, "maxColorTemp":I
    if-gt v3, v2, :cond_0

    if-ge v4, v2, :cond_1

    .line 301
    :cond_0
    const/4 v2, 0x0

    .line 303
    :cond_1
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v5

    move v1, v5

    .line 304
    if-nez v1, :cond_2

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_manager_temp_value"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    return-void

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_manager_temp_value"

    const/16 v7, 0x168

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 310
    .local v5, "saveValue":I
    if-eq v5, v7, :cond_3

    .line 311
    invoke-virtual {v0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 312
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "==1==divhee================resetColorTempEvent====enable===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_3
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "==2==divhee================resetColorTempEvent====enable===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getColorBalance()I

    move-result v6

    move v5, v6

    .line 316
    const/16 v6, -0x64

    if-lt v5, v6, :cond_4

    const/16 v6, 0x64

    if-le v5, v6, :cond_5

    .line 318
    :cond_4
    move v5, v2

    .line 320
    :cond_5
    if-eq v5, v2, :cond_6

    .line 321
    invoke-virtual {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 324
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_6
    :goto_0
    goto :goto_1

    .line 326
    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v1

    .line 327
    .local v1, "middleColorTemp":I
    const/16 v2, -0x64

    .line 328
    .local v2, "minColorTemp":I
    const/16 v3, 0x64

    .line 329
    .local v3, "maxColorTemp":I
    if-gt v2, v1, :cond_8

    if-ge v3, v1, :cond_9

    .line 330
    :cond_8
    const/4 v1, 0x0

    .line 332
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_manager_temp_value"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "====divhee================resetColorTempEvent====disable===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    goto :goto_2

    .line 336
    :catch_0
    move-exception v0

    .line 338
    :goto_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 396
    const/16 v0, 0x2f

    return v0
.end method

.method public getNowColorTempValue(I)I
    .locals 5
    .param p1, "progress"    # I

    .line 143
    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    .line 144
    .local v0, "nowCMPos":I
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    if-nez v1, :cond_0

    .line 145
    add-int/lit8 v0, p1, -0x64

    goto :goto_0

    .line 147
    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 148
    add-int/lit8 v2, p1, -0x64

    iget v3, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    iget v4, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    add-int v0, v2, v1

    goto :goto_0

    .line 149
    :cond_1
    if-ge p1, v1, :cond_2

    .line 150
    add-int/lit8 v2, p1, -0x64

    iget v3, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    iget v4, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    add-int v0, v2, v1

    goto :goto_0

    .line 152
    :cond_2
    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    .line 155
    :goto_0
    return v0
.end method

.method public getNowSeekBarPostion()I
    .locals 4

    .line 122
    const/16 v0, 0x64

    .line 123
    .local v0, "nowSeekbarPos":I
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    if-nez v1, :cond_0

    .line 124
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    .line 126
    :cond_0
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-le v1, v2, :cond_1

    .line 127
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    iget v3, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x64

    .end local v0
    .local v1, "nowSeekbarPos":I
    :goto_0
    goto :goto_1

    .line 128
    .end local v1
    .restart local v0
    :cond_1
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-ge v1, v2, :cond_2

    .line 129
    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->colorTemp:I

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    iget v3, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    .line 131
    :cond_2
    const/16 v1, 0x64

    goto :goto_0

    .line 134
    .end local v0
    .restart local v1
    :goto_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f15004f

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplayColorTempSettings;->addPreferencesFromResource(I)V

    .line 45
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    .line 46
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    .line 48
    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    iget v1, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    if-ge v0, v1, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->defautlColorTemp:I

    .line 50
    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->lowerColorTemp:I

    .line 51
    iput v0, p0, Lcom/android/settings/DisplayColorTempSettings;->upperColorTemp:I

    .line 54
    :cond_1
    const-string v0, "color_manager_temp_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplayColorTempSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CMSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    .line 55
    new-instance v0, Lcom/android/settings/DisplayColorTempSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplayColorTempSettings$1;-><init>(Lcom/android/settings/DisplayColorTempSettings;)V

    .line 61
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v1

    .line 62
    .local v1, "retVal":I
    if-eqz v1, :cond_2

    .line 63
    const-string v2, "DisplayColorTemp"

    const-string v3, "Connection failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_3

    .line 67
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v2, v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v2, :cond_4

    .line 71
    invoke-direct {p0}, Lcom/android/settings/DisplayColorTempSettings;->getColorBalanceInstance()V

    .line 73
    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 366
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/CMSeekBarPreference;->setCallback(Lcom/android/settings/CMSeekBarPreference$Callback;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mCMSeekBarPreference:Lcom/android/settings/CMSeekBarPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/CMSeekBarPreference;->setEnabled(Z)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_1

    .line 377
    iput-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->cmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 379
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 359
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mColorTempObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 383
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->updateColorTempSettings()V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/DisplayColorTempSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/DisplayColorTempSettings;->URL_WARM_MODE:Landroid/net/Uri;

    const-string v2, "switch_warm_mode"

    .line 386
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings;->mColorTempObserver:Landroid/database/ContentObserver;

    .line 385
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplayColorTempSettings;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings;->mRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void
.end method

.method public updateColorTempSettings()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/android/settings/DisplayColorTempSettings;->getColorBalanceInstance()V

    .line 284
    return-void
.end method
