.class public Lcom/android/settings/SettingsExtraMoreSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsExtraMoreSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;
    }
.end annotation


# instance fields
.field private img_steel_film_status:Landroid/widget/ImageView;

.field private mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

.field private mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

.field private mDialog:Landroid/app/Dialog;

.field private mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

.field public mRbciManager:Ljava/lang/Object;

.field private mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private myHandler:Landroid/os/Handler;

.field private myRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    .line 59
    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    .line 69
    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    .line 70
    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcom/android/settings/SettingsExtraMoreSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsExtraMoreSettings$1;-><init>(Lcom/android/settings/SettingsExtraMoreSettings;)V

    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myRunnable:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Lcom/android/settings/SettingsExtraMoreSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsExtraMoreSettings$2;-><init>(Lcom/android/settings/SettingsExtraMoreSettings;)V

    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsExtraMoreSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/SettingsExtraMoreSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;
    .param p1, "x1"    # Landroid/app/Dialog;

    .line 45
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/SettingsExtraMoreSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsExtraMoreSettings;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 45
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static getCallFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fullClassName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 282
    .end local v0
    :catch_0
    move-exception v0

    goto :goto_2

    .line 269
    .restart local v0
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 272
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 274
    :goto_1
    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 276
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 284
    .end local v0
    .end local v1
    :cond_2
    goto :goto_3

    .line 282
    :goto_2
    nop

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==divhee=============getCallField_Value=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "Obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p4, "argObj"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    .local p3, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p2

    .line 173
    .local v0, "result":Ljava/lang/Object;
    if-eqz p0, :cond_1

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "methodObj":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 177
    .local v2, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 178
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 179
    if-eqz v1, :cond_0

    .line 180
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 183
    :cond_0
    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    .line 185
    .end local v1
    .end local v2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "Obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p4, "argObj"    # Ljava/lang/String;
    .param p6, "argObj2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 189
    .local p3, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "argClass2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p2

    .line 190
    .local v0, "result":Ljava/lang/Object;
    if-eqz p0, :cond_1

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "methodObj":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 194
    .local v2, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 195
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v6, 0x1

    aput-object p5, v4, v6

    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 196
    if-eqz v1, :cond_0

    .line 197
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v5

    aput-object p6, v3, v6

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 200
    :cond_0
    goto :goto_0

    .line 199
    :catch_0
    move-exception v3

    .line 202
    .end local v1
    .end local v2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "Obj"    # Ljava/lang/Object;
    .param p1, "fullClassName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .param p4, "argClasss"    # [Ljava/lang/Object;
    .param p5, "argValues"    # [Ljava/lang/Object;

    .line 215
    move-object v0, p3

    .line 216
    .local v0, "result":Ljava/lang/Object;
    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 217
    :cond_0
    const/4 v1, 0x0

    .line 219
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 220
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    goto/16 :goto_6

    .line 222
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 227
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 228
    .local v2, "arrMethods":[Ljava/lang/reflect/Method;
    if-eqz v2, :cond_b

    array-length v3, v2

    if-lez v3, :cond_b

    .line 229
    const/4 v3, 0x1

    .line 230
    .local v3, "isSearchMethodEnable":Z
    if-eqz p4, :cond_2

    array-length v4, p4

    if-nez v4, :cond_3

    :cond_2
    if-eqz p5, :cond_4

    array-length v4, p5

    if-nez v4, :cond_3

    goto :goto_1

    .line 232
    :cond_3
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    array-length v4, p4

    array-length v5, p5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_5

    .line 233
    const/4 v3, 0x0

    goto :goto_2

    .line 231
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 235
    :cond_5
    :goto_2
    const/4 v4, 0x0

    move-object v5, v0

    move v0, v4

    .local v0, "inum":I
    .local v5, "result":Ljava/lang/Object;
    :goto_3
    :try_start_1
    array-length v6, v2

    if-ge v0, v6, :cond_a

    if-nez v3, :cond_a

    .line 236
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 237
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 238
    .local v6, "argList":[Ljava/lang/reflect/Type;
    if-eqz v6, :cond_6

    array-length v7, v6

    if-lez v7, :cond_6

    if-eqz p4, :cond_6

    array-length v7, v6

    array-length v8, p4

    if-ne v7, v8, :cond_6

    .line 239
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 240
    const/4 v3, 0x0

    .line 241
    aget-object v7, v2, v0

    invoke-virtual {v7, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    goto :goto_4

    .line 244
    :cond_6
    if-eqz v6, :cond_7

    array-length v7, v6

    if-nez v7, :cond_9

    :cond_7
    if-eqz p4, :cond_8

    array-length v7, p4

    if-nez v7, :cond_9

    .line 245
    :cond_8
    const/4 v3, 0x0

    .line 246
    aget-object v7, v2, v0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v7

    .line 235
    .end local v6
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 254
    .end local v0
    .end local v2
    .end local v3
    :cond_a
    move-object v0, v5

    goto :goto_5

    .line 252
    :catch_1
    move-exception v2

    move-object v0, v5

    goto :goto_6

    .line 254
    .end local v5
    .local v0, "result":Ljava/lang/Object;
    :cond_b
    :goto_5
    goto :goto_7

    .line 252
    :goto_6
    nop

    .line 253
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====divhee==============setCallMethod====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1
    .end local v2
    :cond_c
    :goto_7
    return-object v0
.end method


# virtual methods
.method public btQuickPrinterSetChecked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 592
    const/16 v0, 0x2f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f15005b

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsExtraMoreSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v0, "pointer_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 80
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updatePointerLocationPreference()V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    const-string v1, "rbci"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_1

    .line 88
    :catch_1
    move-exception v1

    goto :goto_0

    .line 87
    :catch_2
    move-exception v1

    .line 90
    :goto_0
    nop

    .line 91
    :goto_1
    const-string v1, "readboy_extra_quick_printer_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    .line 92
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    :cond_1
    const-string v1, "readboy_extra_quick_printer_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->removePreference(Ljava/lang/String;)Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_quick_printer_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsExtraMoreSettings;->btQuickPrinterSetChecked(Z)V

    .line 99
    const-string v2, "readboy_ai_assist_wakeup_switch"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 100
    const-string v2, "com.readboy.voiceassistant"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const v5, 0xb644281

    if-lt v2, v5, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateAIAssistWakeupSwitchStatus()V

    goto :goto_3

    .line 103
    :cond_3
    const-string v2, "readboy_ai_assist_wakeup_switch"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsExtraMoreSettings;->removePreference(Ljava/lang/String;)Z

    .line 104
    iput-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 107
    :goto_3
    const-string v2, "ro.readboy.front.camera.type"

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "canmeraStyle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "riseandfall"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    .line 109
    .local v3, "isRiseandFallCamera":Z
    :goto_4
    if-eqz v3, :cond_5

    .line 110
    const-string v4, "readboy_ar_mirror_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsExtraMoreSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_5

    .line 113
    :cond_5
    const-string v4, "readboy_ar_mirror_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateArMirrorStatus()V

    .line 126
    :goto_5
    const/4 v4, 0x0

    .line 127
    .local v4, "result_str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 129
    iget-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v6, "RbciGetInfoByName"

    const-class v7, Ljava/lang/String;

    const-string v8, "TP_glass_mode"

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 131
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 132
    const-string v5, "readboy_steel_film_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateSteelFilmStatus()V

    goto :goto_6

    .line 135
    :cond_7
    const-string v5, "readboy_steel_film_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsExtraMoreSettings;->removePreference(Ljava/lang/String;)Z

    .line 137
    :goto_6
    iget-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 139
    iget-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v6, "RbciGetInfoByName"

    const-class v7, Ljava/lang/String;

    const-string v8, "TP_click_mode"

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 141
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 142
    const-string v1, "readboy_doubleclick_wakeup_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateDoubleclickWakeupStatus()V

    goto :goto_7

    .line 145
    :cond_9
    const-string v1, "readboy_doubleclick_wakeup_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->removePreference(Ljava/lang/String;)Z

    .line 150
    :goto_7
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 513
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mBtQuickPrinterPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 514
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 515
    .local v1, "checked":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "readboy_quick_printer_enable"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    :cond_0
    return v2

    .line 519
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 520
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 521
    .local v1, "auto":Z
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->setAIAssistWakeupSwitchStatus(Z)V

    .line 522
    return v2

    .line 523
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 524
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 525
    .local v1, "isEnabled":Z
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->resetPointerLocationPreference(Z)V

    .line 526
    return v2

    .line 527
    .end local v1
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 528
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 529
    .local v1, "auto":Z
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->setArMirrorStatus(Z)V

    .line 530
    return v2

    .line 531
    .end local v1
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    .line 532
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 533
    .restart local v1
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsExtraMoreSettings;->setDoubleclickWakeupStatus(ZZ)V

    .line 534
    return v2

    .line 535
    .end local v1
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_a

    .line 536
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 537
    .restart local v1
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 539
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 541
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v4

    .line 542
    :goto_0
    iput-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    .line 543
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    .line 545
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 546
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 549
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    goto :goto_1

    .line 548
    :catch_1
    move-exception v4

    .line 550
    :goto_1
    iput-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    .line 553
    :cond_7
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    .line 555
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d01b2

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 556
    .local v4, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 557
    const v6, 0x7f0a01ef

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    .line 558
    iget-object v6, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    .line 559
    const v6, 0x7f010012

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 560
    .local v6, "anim":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/android/settings/SettingsExtraMoreSettings;->img_steel_film_status:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 572
    .end local v6
    :cond_8
    iget-object v6, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v5, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 575
    .end local v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 574
    :catch_2
    move-exception v4

    .line 576
    :goto_2
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/SettingsExtraMoreSettings$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/SettingsExtraMoreSettings$3;-><init>(Lcom/android/settings/SettingsExtraMoreSettings;Z)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_9

    .line 583
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 585
    :cond_9
    return v2

    .line 587
    .end local v1
    :cond_a
    return v3
.end method

.method public onResume()V
    .locals 4

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWackupSwitchUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public resetPointerLocationPreference(Z)V
    .locals 5
    .param p1, "statusNew"    # Z

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 484
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 485
    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 493
    .local v1, "adbStatus":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    .end local v1
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 506
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 509
    :cond_1
    return-void
.end method

.method public setAIAssistWakeupSwitchStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ai_assist_wakeup_switch_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ai_assist_wakeup_switch_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 347
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateAIAssistWakeupSwitchStatus()V

    .line 349
    return-void
.end method

.method public setArMirrorStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ar_mirror_switch_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ar_mirror_switch_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 319
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateArMirrorStatus()V

    .line 321
    return-void
.end method

.method public setDoubleclickWakeupStatus(ZZ)V
    .locals 8
    .param p1, "checked"    # Z
    .param p2, "updateNow"    # Z

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v2, "RbciSetBooleanByName"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-string v5, "TP_click_mode"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rbcisetbooleanbyname_tp_click_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v0
    :goto_0
    if-eqz p2, :cond_1

    .line 383
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateDoubleclickWakeupStatus()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v0

    goto :goto_2

    .line 386
    :cond_1
    :goto_1
    nop

    .line 387
    :goto_2
    return-void
.end method

.method public setSteelFilmStatus(ZZ)V
    .locals 8
    .param p1, "checked"    # Z
    .param p2, "updateNow"    # Z

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v2, "RbciSetBooleanByName"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-string v5, "TP_glass_mode"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rbcisetbooleanbyname_tp_glass_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    .end local v0
    :goto_0
    if-eqz p2, :cond_1

    .line 420
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateSteelFilmStatus()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 422
    :catch_1
    move-exception v0

    goto :goto_2

    .line 423
    :cond_1
    :goto_1
    nop

    .line 424
    :goto_2
    return-void
.end method

.method public updateAIAssistWakeupSwitchStatus()V
    .locals 3

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ai_assist_wakeup_switch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "aiAssistWakeupMode":I
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mAiAssistWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    .end local v0
    :goto_1
    return-void
.end method

.method public updateArMirrorStatus()V
    .locals 4

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    const/4 v0, 0x1

    .line 302
    .local v0, "idefaultValue":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_ar_mirror_switch_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 303
    .local v1, "arMirrorMode":I
    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mArMirrorSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 308
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v0
    :goto_1
    return-void
.end method

.method public updateDoubleclickWakeupStatus()V
    .locals 5

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v1, "RbciGetBooleanByName"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-string v4, "TP_click_mode"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 361
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mDoubleclickWakeupSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    .end local v0
    :goto_0
    return-void
.end method

.method public updatePointerLocationPreference()V
    .locals 5

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/SettingsExtraMoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 470
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 472
    .local v1, "pointerLocationMode":I
    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 474
    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mPointerLocationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 476
    .end local v1
    :cond_1
    return-void
.end method

.method public updateSteelFilmStatus()V
    .locals 5

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mRbciManager:Ljava/lang/Object;

    const-string v1, "RbciGetBooleanByName"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-string v4, "TP_glass_mode"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 398
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings;->mSteelFilmSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    .end local v0
    :goto_0
    return-void
.end method
