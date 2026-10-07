.class public Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 68
    const v0, 0x7f1206a0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "BluetoothDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 58
    const/16 v0, 0x56e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 73
    const v0, 0x7f150028

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 93
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 94
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12024d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 97
    .local v1, "lifecycle":Lcom/android/settingslib/core/lifecycle/Lifecycle;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroid/app/Fragment;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 80
    return-void
.end method
