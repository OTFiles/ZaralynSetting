.class Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
.super Lcom/android/settings/widget/AppSwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mHandler:Landroid/os/Handler;

.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 258
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .line 259
    invoke-direct {p0, p2}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHandler:Landroid/os/Handler;

    .line 260
    const v0, 0x7f0d0188

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setWidgetLayoutResource(I)V

    .line 261
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 262
    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 263
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    .line 264
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 265
    iget-object v0, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 265
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 251
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 251
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object v0
.end method

.method private setState()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const v0, 0x7f12053e

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    .line 326
    const v0, 0x7f120bdd

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    .line 328
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getEntryForTest()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onAttached()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 288
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 340
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "widgetFrame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 342
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 358
    .local v2, "disabledByAdmin":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 360
    goto :goto_0

    .line 359
    :catch_0
    move-exception v3

    .line 369
    :goto_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 371
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 370
    :catch_1
    move-exception v3

    .line 373
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v3, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 374
    const v3, 0x7f0a035a

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 375
    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 374
    move v5, v1

    goto :goto_2

    .line 375
    :cond_2
    nop

    .line 374
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    const v3, 0x1020040

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 377
    if-eqz v2, :cond_3

    .line 376
    move v1, v4

    goto :goto_3

    .line 377
    :cond_3
    nop

    .line 376
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 378
    :catch_2
    move-exception v1

    .line 380
    :goto_4
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 396
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 400
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    .line 300
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f120115

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onClick()V

    .line 309
    :goto_0
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .line 384
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 293
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onDetached()V

    .line 294
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 388
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 392
    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->performClick()V

    .line 316
    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    .line 336
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 403
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 404
    return-void
.end method
