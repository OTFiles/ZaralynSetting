.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;,
        Lcom/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field public final REQUEST_PARENT_PASSWORD_CHECK_DATETIME:I

.field public final REQUEST_PARENT_PASSWORD_RESET_DATETIME:I

.field public isParentPasswordCheckPassed:I

.field private mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

.field private mClickCountTimes:I

.field private mCustomStatusDisabled:Z

.field public mIsNowParentManagerShowing:I

.field private mLastClickTime:J

.field private mListContainer:Landroid/view/View;

.field private final mReadboymDTPrefCategoryClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mSyncDateTimePref:Lcom/android/settings/widget/SyncGearPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 351
    new-instance v0, Lcom/android/settings/DateTimeSettings$5;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 361
    new-instance v0, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;-><init>(Lcom/android/settings/DateTimeSettings$1;)V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 71
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->REQUEST_PARENT_PASSWORD_CHECK_DATETIME:I

    .line 72
    const/16 v0, 0x271b

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->REQUEST_PARENT_PASSWORD_RESET_DATETIME:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/DateTimeSettings;->mIsNowParentManagerShowing:I

    .line 78
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/DateTimeSettings;->mLastClickTime:J

    .line 79
    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mClickCountTimes:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mCustomStatusDisabled:Z

    .line 183
    new-instance v0, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mReadboymDTPrefCategoryClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .line 63
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mCustomStatusDisabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .line 63
    iget-wide v0, p0, Lcom/android/settings/DateTimeSettings;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/settings/DateTimeSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Lcom/android/settings/DateTimeSettings;->mLastClickTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .line 63
    iget v0, p0, Lcom/android/settings/DateTimeSettings;->mClickCountTimes:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/DateTimeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/settings/DateTimeSettings;->mClickCountTimes:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/settings/DateTimeSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .line 63
    iget v0, p0, Lcom/android/settings/DateTimeSettings;->mClickCountTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/DateTimeSettings;->mClickCountTimes:I

    return v0
.end method

.method public static forceSyncDateTimeNowTime()V
    .locals 4

    .line 172
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DateTimeSettings;->syncDateTimeCurrent(Landroid/content/Context;Z)V

    .line 174
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v1}, Lcom/android/settings/DateTimeSettings$2;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_0
    return-void
.end method

.method public static syncDateTimeCurrent(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoEnabled"    # Z

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    .line 149
    nop

    .line 148
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    .line 151
    nop

    .line 150
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 260
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 261
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "firstRun"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 263
    .local v3, "isFromSUW":Z
    new-instance v4, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v4, v1, p0, v3}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    .line 265
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->setForceEnabled(I)Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    .line 266
    new-instance v4, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v4, v1, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 268
    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/AutoTimePreferenceController;->setForceEnabled(I)Lcom/android/settings/datetime/AutoTimePreferenceController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 269
    new-instance v4, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;

    invoke-direct {v4, v1, p0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 272
    .local v4, "autoTimeFormatPreferenceController":Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v6, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v7, "sync_date_time_pref"

    invoke-direct {v6, v1, v7, v5}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v5, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-direct {v5, v1, p0, v3}, Lcom/android/settings/datetime/TimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v5, Lcom/android/settings/datetime/TimeZonePreferenceController;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v5, v1, v6}, Lcom/android/settings/datetime/TimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v5, Lcom/android/settings/datetime/TimePreferenceController;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v5, v1, p0, v6}, Lcom/android/settings/datetime/TimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v5, Lcom/android/settings/datetime/DatePreferenceController;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v5, v1, p0, v6}, Lcom/android/settings/datetime/DatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-object v0
.end method

.method public exchangeDateTimeZoneStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->setForceEnabled(I)Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->setForceEnabled(I)Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 143
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/DateTimeSettings;->mCustomStatusDisabled:Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updatePreferenceStates()V

    .line 145
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 314
    :pswitch_0    # 0x1
    const/16 v0, 0x260

    return v0

    .line 312
    :pswitch_1    # 0x0
    const/16 v0, 0x25f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "DateTimeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 86
    const/16 v0, 0x26

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 247
    const v0, 0x7f15003b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "sync_date_time_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SyncGearPreference;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSyncDateTimePref:Lcom/android/settings/widget/SyncGearPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSyncDateTimePref:Lcom/android/settings/widget/SyncGearPreference;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mReadboymDTPrefCategoryClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SyncGearPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 460
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 461
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, -0x1

    packed-switch p1, :pswitch_data_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 483
    :pswitch_0    # 0x271b
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eq p2, v6, :cond_3

    :cond_0
    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_3

    iget v3, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 496
    :cond_1
    iput v6, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":android:no_headers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->finish()V

    goto/16 :goto_5

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 503
    goto/16 :goto_5

    .line 485
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    if-eq v1, v5, :cond_4

    .line 486
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mCustomStatusDisabled:Z

    xor-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->exchangeDateTimeZoneStatus(Z)V

    .line 488
    :cond_4
    if-eq p2, v6, :cond_6

    iget v1, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    if-ne v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, p2

    nop

    :cond_6
    :goto_1
    iput v5, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 490
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 491
    const-string v1, ""

    const-string v2, "=====divhee================UNINSTALL_ENABLE_ENTER==1121="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_5

    .line 463
    :pswitch_1    # 0x271a
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eq p2, v6, :cond_a

    :cond_7
    if-eq p2, v4, :cond_a

    if-eq p2, v3, :cond_a

    iget v3, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    if-ne v3, v5, :cond_8

    goto :goto_2

    .line 473
    :cond_8
    iput v6, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":android:no_headers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->finish()V

    goto :goto_4

    .line 477
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_4

    .line 465
    :cond_a
    :goto_2
    if-eq p2, v6, :cond_c

    iget v1, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    if-ne v1, v5, :cond_b

    goto :goto_3

    :cond_b
    move v5, p2

    nop

    :cond_c
    :goto_3
    iput v5, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 467
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 468
    const-string v1, ""

    const-string v2, "=====divhee================UNINSTALL_ENABLE_ENTER==1101="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 480
    :cond_d
    :goto_4
    iput v6, p0, Lcom/android/settings/DateTimeSettings;->mIsNowParentManagerShowing:I

    .line 481
    nop

    .line 508
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1    # 0x271a
        :pswitch_0    # 0x271b
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 254
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 95
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 301
    :pswitch_0    # 0x1
    const-class v0, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/TimePreferenceController;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/app/Activity;)Landroid/app/TimePickerDialog;

    move-result-object v0

    .line 301
    return-object v0

    .line 298
    :pswitch_1    # 0x0
    const-class v0, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/DatePreferenceController;

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/app/Activity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    .line 298
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 219
    .local v1, "list_container":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    .line 224
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01de

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/DateTimeSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/DateTimeSettings$4;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v2, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v3

    .line 237
    .end local v2
    :cond_3
    :goto_1
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 402
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 404
    iget v0, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 406
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 385
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 387
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DateTimeSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/DateTimeSettings$6;-><init>(Lcom/android/settings/DateTimeSettings;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 418
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/DateTimeSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    const/4 v0, 0x2

    return v0

    .line 422
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 424
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 427
    iput v1, p0, Lcom/android/settings/DateTimeSettings;->mIsNowParentManagerShowing:I

    .line 428
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 432
    .end local v0
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 429
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 431
    const-string v1, ""

    const-string v3, "===322=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0
    nop

    .line 435
    :goto_0
    return v2

    .line 444
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 445
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    iput v1, p0, Lcom/android/settings/DateTimeSettings;->mIsNowParentManagerShowing:I

    .line 448
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v1

    .line 452
    .end local v0
    :catch_2
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 449
    :catch_3
    move-exception v0

    .line 450
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 451
    const-string v1, ""

    const-string v3, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0
    nop

    .line 455
    :goto_1
    return v2
.end method

.method public showDatePicker()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 329
    return-void
.end method

.method public showTimePicker()V
    .locals 1

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 324
    return-void
.end method

.method public syncDateTimeCurrent()V
    .locals 4

    .line 155
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DateTimeSettings;->syncDateTimeCurrent(Landroid/content/Context;Z)V

    .line 156
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updatePreferenceStates()V

    .line 292
    return-void
.end method
