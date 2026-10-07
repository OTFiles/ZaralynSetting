.class public Lcom/android/settings/fuelgauge/HighPowerDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDefaultOn:Z

.field mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionOff:Landroid/widget/Checkable;

.field private mOptionOn:Landroid/widget/Checkable;

.field mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageUid:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 171
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    .line 176
    .local v0, "powerWhitelist":Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    invoke-virtual {v0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1206ed

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1206ea

    goto :goto_0

    .line 178
    :cond_1
    const v1, 0x7f1206e9

    .line 176
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "whitelist"    # Z
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    if-eqz p0, :cond_0

    const/16 v0, 0x2fd

    goto :goto_0

    .line 156
    :cond_0
    const/16 v0, 0x2fc

    .line 157
    .local v0, "logCategory":I
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 159
    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;I)V
    .locals 4
    .param p0, "caller"    # Landroid/app/Fragment;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 182
    new-instance v0, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    .line 183
    .local v0, "fragment":Lcom/android/settings/fuelgauge/HighPowerDetail;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setArguments(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {v0, p0, p3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 122
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 64
    const/16 v0, 0x21c

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 139
    .local v0, "newValue":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "oldValue":Z
    if-eq v0, v1, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->removeApp(Ljava/lang/String;)V

    .line 151
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 128
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 131
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    .line 133
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 72
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 81
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 82
    .end local v3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "default_on"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    .line 83
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 84
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    const v1, 0x7f120358

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const v1, 0x7f120589

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 165
    .local v0, "target":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    .line 117
    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .line 87
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 88
    const v1, 0x7f1206f4

    goto :goto_0

    :cond_0
    const v1, 0x7f1206f2

    .line 87
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 90
    const v1, 0x7f1206f5

    goto :goto_1

    :cond_1
    const v1, 0x7f1206f3

    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    return-object v0
.end method
