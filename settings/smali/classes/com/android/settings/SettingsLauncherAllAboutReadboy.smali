.class public Lcom/android/settings/SettingsLauncherAllAboutReadboy;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SettingsLauncherAllAboutReadboy.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final REQUEST_PARENT_PASSWORD_CHECK_LAUNCHER_ALL_APP:I

.field public isParentPasswordCheckPassed:I

.field public ll_btn_launcher_skin_classic:Landroid/view/View;

.field public ll_btn_launcher_skin_newyear:Landroid/view/View;

.field public mIsNowParentManagerShowing:I

.field private mLastClickChooseLauncherSkinTime:J

.field private mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLauncherNewYearSkinPref:Lcom/android/settings/LauncherSkinChoosePreference;

.field private mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mListContainer:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field public tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

.field public tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLastClickChooseLauncherSkinTime:J

    .line 97
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->REQUEST_PARENT_PASSWORD_CHECK_LAUNCHER_ALL_APP:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mIsNowParentManagerShowing:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    .line 51
    iget-wide v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLastClickChooseLauncherSkinTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsLauncherAllAboutReadboy;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy;
    .param p1, "x1"    # J

    .line 51
    iput-wide p1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLastClickChooseLauncherSkinTime:J

    return-wide p1
.end method

.method public static getNowLauncherNewYearSkinSelected(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_new_year_skin_callback_enable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "showEnableNewYearSkin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "skin_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skin_path"

    .line 507
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    new-instance v2, Ljava/io/File;

    const-string v3, "skin_path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "strskin_name":Ljava/lang/String;
    const-string v3, "skin_nowused"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "strskin_nowused":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 512
    const/4 v4, 0x1

    return v4

    .line 517
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    .line 519
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isLauncherNewYearSkinEnable(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_new_year_skin_callback_enable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "showEnableNewYearSkin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "skin_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skin_path"

    .line 484
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====divhee===============isLauncherNewYearSkinEnable===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v2, Ljava/io/File;

    const-string v3, "skin_path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 487
    const/4 v2, 0x1

    return v2

    .line 491
    .end local v1
    :cond_0
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 493
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isLauncherSettingsVisiableStatus(Landroid/content/Context;)Z
    .locals 9
    .param p0, "activity"    # Landroid/content/Context;

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_boy_callback_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "showEnableBoy":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    return v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_anim_switch_xuexizhinan_callback_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 273
    .local v3, "showEnableXuexizhinan":I
    if-ne v3, v1, :cond_1

    .line 274
    return v1

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "launcher_switch_drag_screen_order_callback_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 277
    .local v4, "showEnableDragScreenOrder":I
    if-ne v4, v1, :cond_2

    .line 278
    return v1

    .line 280
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "launcher_switch_customappbtn_password_callback_enable"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 281
    .local v5, "showEnableCustomAppBtn":I
    if-ne v5, v1, :cond_3

    .line 282
    return v1

    .line 284
    :cond_3
    invoke-static {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isLauncherNewYearSkinEnable(Landroid/content/Context;)I

    move-result v6

    .line 285
    .local v6, "showEnableNewYearSkin":I
    if-ne v6, v1, :cond_4

    .line 286
    return v1

    .line 288
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_shortcut_can_display"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 289
    .local v7, "iRetDisplayEnable":I
    if-ne v7, v1, :cond_5

    .line 290
    return v1

    .line 292
    :cond_5
    return v2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 297
    const/16 v0, 0x26

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 691
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 692
    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 694
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/16 v1, 0x64

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    if-eq p2, v2, :cond_2

    .line 695
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    if-eq p2, v3, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    if-ne v0, v1, :cond_5

    .line 696
    :cond_2
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee===========PARENT_PASSWORD=======resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-eq p2, v2, :cond_4

    iget v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    nop

    :cond_4
    :goto_0
    iput v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 699
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 703
    :cond_5
    iput v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 707
    :cond_6
    :goto_1
    iput v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mIsNowParentManagerShowing:I

    .line 708
    nop

    .line 712
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f150069

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_anim_switch_boy_callback_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, "showEnableBoy":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    const-string v4, "readboy_launcher_boy_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherBoyStatus()V

    goto :goto_0

    .line 145
    :cond_0
    const-string v4, "readboy_launcher_boy_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 148
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "launcher_anim_switch_xuexizhinan_callback_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 149
    .local v4, "showEnableXuexizhinan":I
    if-ne v4, v2, :cond_1

    .line 150
    const-string v5, "readboy_launcher_xuexizhinan_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherXuexizhinanStatus()V

    goto :goto_1

    .line 157
    :cond_1
    const-string v5, "readboy_launcher_xuexizhinan_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 160
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "launcher_switch_drag_screen_order_callback_enable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 161
    .local v5, "showEnableDragScreenOrder":I
    if-ne v5, v2, :cond_3

    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "launcher_switch_drag_screen_order_callback"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 163
    .local v6, "deleteAppEnable":I
    if-ne v6, v8, :cond_2

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_switch_drag_screen_order_callback"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_switch_drag_screen_order_callback"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 167
    :cond_2
    const-string v7, "readboy_launcher_drag_screen_order_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherDragScreenOrderStatus()V

    .line 169
    .end local v6
    goto :goto_2

    .line 170
    :cond_3
    const-string v6, "readboy_launcher_drag_screen_order_switch"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 173
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "launcher_switch_customappbtn_password_callback_enable"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 174
    .local v6, "showEnableCustomAppBtn":I
    if-ne v6, v2, :cond_4

    .line 176
    const-string v7, "readboy_launcher_customappbtn_password_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherCustomAppBtnStatus()V

    goto :goto_3

    .line 179
    :cond_4
    const-string v7, "readboy_launcher_customappbtn_password_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 182
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_switch_third_party_launcher_esp_icon_callback_enable"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 183
    .local v7, "showEnableThirdPartEspIcon":I
    if-ne v7, v2, :cond_5

    .line 185
    const-string v8, "readboy_launcher_third_party_launcher_esp_icon_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherThirdPartEspIconStatus()V

    goto :goto_4

    .line 188
    :cond_5
    const-string v8, "readboy_launcher_third_party_launcher_esp_icon_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 191
    :goto_4
    invoke-static {v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isLauncherNewYearSkinEnable(Landroid/content/Context;)I

    move-result v8

    .line 192
    .local v8, "showEnableNewYearSkin":I
    if-ne v8, v2, :cond_6

    .line 194
    const-string v9, "readboy_launcher_new_year_skin_switch"

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LauncherSkinChoosePreference;

    iput-object v9, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherNewYearSkinPref:Lcom/android/settings/LauncherSkinChoosePreference;

    .line 195
    iget-object v9, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherNewYearSkinPref:Lcom/android/settings/LauncherSkinChoosePreference;

    new-instance v10, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    invoke-direct {v10, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/LauncherSkinChoosePreference;->setOnInitBtnsListener(Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;)V

    goto :goto_5

    .line 235
    :cond_6
    const-string v9, "readboy_launcher_new_year_skin_switch"

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 242
    :goto_5
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "launcher_shortcut_can_display"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 243
    .local v9, "iRetDisplayEnable":I
    if-eq v9, v2, :cond_7

    .line 245
    const-string v2, ""

    const-string v10, "===========divhee=========KEY_LAUNCHER_SHORTCUT_CAN_DISPLAY===1==="

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v2, "launcher_shortcut_enable_pref"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    goto :goto_6

    .line 249
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "launcher_shortcut_request_list"

    invoke-static {v2, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "strReqList":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getAllAppShortcut(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 251
    .local v10, "launcherShortcutPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_8

    .line 252
    const-string v11, ""

    const-string v12, "===========divhee=========KEY_LAUNCHER_SHORTCUT_CAN_DISPLAY===2==="

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v11, "launcher_shortcut_enable_pref"

    invoke-virtual {p0, v11}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->removePreference(Ljava/lang/String;)Z

    .line 259
    .end local v2
    .end local v10
    :cond_8
    :goto_6
    iput v3, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 261
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "child":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 110
    .local v1, "list_container":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 111
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01de

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/SettingsLauncherAllAboutReadboy$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$1;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v2, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v3

    .line 128
    .end local v2
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mRootView:Landroid/view/View;

    .line 129
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 319
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 321
    iget v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 323
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 618
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 619
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 620
    .local v1, "auto":Z
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherBoyStatus(Z)V

    .line 621
    return v2

    .line 622
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    .line 623
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 624
    .restart local v1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherXuexizhinanStatus(Z)V

    .line 625
    return v2

    .line 626
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 627
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 628
    .restart local v1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherDragScreenOrderStatus(Z)V

    .line 629
    return v2

    .line 630
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 631
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 632
    .restart local v1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherCustomAppBtnStatus(Z)V

    .line 633
    return v2

    .line 634
    .end local v1
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 635
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 636
    .restart local v1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherThirdPartEspIconStatus(Z)V

    .line 637
    return v2

    .line 640
    .end local v1
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 4

    .line 302
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 304
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 5
    .param p1, "request"    # I

    .line 650
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->onActivityResult(IILandroid/content/Intent;)V

    .line 652
    return v1

    .line 654
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 656
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 659
    iput v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mIsNowParentManagerShowing:I

    .line 660
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 664
    .end local v0
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 661
    :catch_1
    move-exception v0

    .line 662
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 663
    const-string v1, ""

    const-string v2, "===322=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0
    nop

    .line 667
    :goto_0
    return v3

    .line 668
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 670
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->onActivityResult(IILandroid/content/Intent;)V

    .line 671
    return v1

    .line 675
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 678
    iput v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mIsNowParentManagerShowing:I

    .line 679
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v2

    .line 683
    .end local v0
    :catch_2
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 680
    :catch_3
    move-exception v0

    .line 681
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 682
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v0
    nop

    .line 686
    :goto_1
    return v3
.end method

.method public setLauncherBoyStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_boy_callback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_boy_callback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 355
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherBoyStatus()V

    .line 357
    return-void
.end method

.method public setLauncherCustomAppBtnStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_customappbtn_password_callback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_customappbtn_password_callback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 442
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherCustomAppBtnStatus()V

    .line 444
    return-void
.end method

.method public setLauncherDragScreenOrderStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_drag_screen_order_callback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_drag_screen_order_callback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 414
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherDragScreenOrderStatus()V

    .line 416
    return-void
.end method

.method public setLauncherNewYearSkinStatus(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .line 570
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setNowLauncherNewYearSkinSelected(Landroid/content/Context;I)I

    .line 571
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 579
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherNewYearSkinStatus()V

    .line 583
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherAllAboutReadboy$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$4;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    return-void
.end method

.method public setLauncherThirdPartEspIconStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_third_party_launcher_esp_icon_callback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_third_party_launcher_esp_icon_callback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 470
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherThirdPartEspIconStatus()V

    .line 472
    return-void
.end method

.method public setLauncherXuexizhinanStatus(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_xuexizhinan_callback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_xuexizhinan_callback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 386
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherXuexizhinanStatus()V

    .line 388
    return-void
.end method

.method public setNowLauncherNewYearSkinSelected(Landroid/content/Context;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selected"    # I

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_new_year_skin_callback_enable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "showEnableNewYearSkin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "skin_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skin_path"

    .line 534
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    new-instance v2, Ljava/io/File;

    const-string v3, "skin_path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    const-string v2, "skin_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "strskin_name":Ljava/lang/String;
    const-string v3, "skin_nowused"

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====divhee===============setNowLauncherNewYearSkinSelected===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_switch_new_year_skin_callback_enable"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_switch_new_year_skin_callback_enable"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 544
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 543
    :catch_0
    move-exception v1

    .line 546
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public updateLauncherBoyStatus()V
    .locals 3

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_boy_callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 339
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherBoySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    .end local v0
    :goto_1
    return-void
.end method

.method public updateLauncherCustomAppBtnStatus()V
    .locals 3

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_customappbtn_password_callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 426
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherCustomappbtnPasswordSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 431
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v0
    :goto_1
    return-void
.end method

.method public updateLauncherDragScreenOrderStatus()V
    .locals 3

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_drag_screen_order_callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 398
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherDragScreenOrderSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    .end local v0
    :goto_1
    return-void
.end method

.method public updateLauncherNewYearSkinStatus()V
    .locals 5

    .line 554
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getNowLauncherNewYearSkinSelected(Landroid/content/Context;)I

    move-result v0

    .line 555
    .local v0, "iNowChoosedValue":I
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 559
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;

    if-ne v0, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 563
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    .end local v0
    :goto_1
    return-void
.end method

.method public updateLauncherThirdPartEspIconStatus()V
    .locals 3

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_third_party_launcher_esp_icon_callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 454
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherThirdPartyLauncherEspIconSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 459
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0
    :goto_1
    return-void
.end method

.method public updateLauncherXuexizhinanStatus()V
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_anim_switch_xuexizhinan_callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 367
    .local v0, "idefaultValue":Z
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 368
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mLauncherXuexizhinanSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    .end local v0
    :goto_1
    return-void
.end method
