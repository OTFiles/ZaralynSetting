.class public Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DevelopmentRiseAndFallCameraAdjustPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static onlySignleTime:J


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private final mPreferenceKey:Ljava/lang/String;

.field public mRbciAlertDlg:Landroid/app/AlertDialog;

.field public mRbciManager:Ljava/lang/Object;

.field public mRbciRiseFallCameraPref:Landroid/support/v7/preference/Preference;

.field private mThisTimeOnlySignleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->onlySignleTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    .line 50
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    .line 54
    const-string v1, "rise_and_fall_camera_adjust_pref"

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 56
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mThisTimeOnlySignleTime:J

    .line 166
    new-instance v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;-><init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mActivity:Landroid/app/Activity;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->onlySignleTime:J

    .line 81
    sget-wide v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->onlySignleTime:J

    iput-wide v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mThisTimeOnlySignleTime:J

    .line 83
    const-string v1, "ro.readboy.front.camera.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "canmeraStyle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "riseandfall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 85
    .local v2, "isRiseandFallCamera":Z
    :goto_0
    const-string v4, "ro.readboy.flip.calibrate"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 86
    .local v4, "flipcameraType":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====divhee=======================flipcameraType===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v2, :cond_3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    goto/16 :goto_5

    .line 92
    :cond_1
    :try_start_0
    const-string v5, "rbci"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v5

    goto :goto_2

    .line 94
    :catch_1
    move-exception v5

    goto :goto_1

    .line 93
    :catch_2
    move-exception v5

    .line 96
    :goto_1
    nop

    .line 98
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v5, :cond_2

    .line 101
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v6, "registerCameraHandler"

    const-class v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->callVoidMethod1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 104
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 102
    :catch_3
    move-exception v5

    .line 103
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PrefControllerMixin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====divhee=====getFlag exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 112
    :catch_4
    move-exception v5

    .line 113
    .restart local v5
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    .line 114
    const-string v0, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===3=divhee===========mRbciManager==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5
    goto :goto_4

    .line 109
    :catch_5
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    .line 111
    const-string v0, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==2==divhee===========mRbciManager==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5
    goto :goto_3

    .line 106
    :catch_6
    move-exception v5

    .line 107
    .local v5, "e":Ljava/lang/NoSuchMethodError;
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    .line 108
    const-string v0, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==1==divhee===========mRbciManager==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v5
    :cond_2
    :goto_3
    nop

    .line 117
    :goto_4
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    goto :goto_6

    .line 88
    :cond_3
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 123
    :cond_4
    :goto_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 46
    iget-wide v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mThisTimeOnlySignleTime:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 46
    sget-wide v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->onlySignleTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 46
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 46
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public callMethodVoidParam(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "Obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 292
    move-object v0, p3

    .line 293
    .local v0, "result":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "methodObj":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 297
    .local v2, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 298
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 299
    if-eqz v1, :cond_0

    .line 300
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 303
    :cond_0
    goto :goto_0

    .line 302
    :catch_0
    move-exception v3

    .line 305
    .end local v1
    .end local v2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public callVoidMethod1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .param p1, "Obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "argObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 270
    .local p3, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "methodObj":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 274
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 275
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 276
    if-eqz v0, :cond_0

    .line 277
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 282
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public callVoidMethodVoidParam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "Obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 314
    if-eqz p1, :cond_1

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "methodObj":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 318
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 319
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 320
    if-eqz v0, :cond_0

    .line 321
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 326
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "rise_and_fall_camera_adjust_pref"

    return-object v0
.end method

.method public getPrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "filedName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 247
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 248
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 250
    .end local v0
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "========divhee=========getPrivateField=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0
    return-object p3
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 143
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    return v1

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rise_and_fall_camera_adjust_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 151
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee=============COMMAND_CALIBRATION========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v4, "COMMAND_CALIBRATION"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v2, "cameraCommand"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v6, "COMMAND_CALIBRATION"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->callVoidMethod1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->refreshRbciRiseFallCameraStatus(I)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_2
    return v1
.end method

.method public refreshRbciRiseFallCameraStatus(I)V
    .locals 4
    .param p1, "iResId"    # I

    .line 334
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;-><init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    return-void
.end method

.method public releaseController()V
    .locals 3

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mActivity:Landroid/app/Activity;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v2, "unregisterCameraHandler"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->callVoidMethodVoidParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    .line 74
    :cond_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rise_and_fall_camera_adjust_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciRiseFallCameraPref:Landroid/support/v7/preference/Preference;

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->refreshRbciRiseFallCameraStatus(I)V

    .line 139
    :cond_0
    return-void
.end method
