.class public Lcom/android/settings/applications/RunningServicesOLD;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RunningServicesOLD.java"


# instance fields
.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mOptionsMenu:Landroid/view/Menu;

.field private final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/android/settings/applications/RunningServicesOLD$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServicesOLD$1;-><init>(Lcom/android/settings/applications/RunningServicesOLD;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesAvail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServicesOLD;)Lcom/android/settings/widget/LoadingViewController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/RunningServicesOLD;

    .line 31
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object v0
.end method

.method private updateOptionsMenu()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 107
    .local v0, "showingBackground":Z
    iget-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mOptionsMenu:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mOptionsMenu:Landroid/view/Menu;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 113
    const/16 v0, 0x194

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServicesOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120c17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 63
    iput-object p1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mOptionsMenu:Landroid/view/Menu;

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f120cfa

    invoke-interface {p1, v1, v0, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 65
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 66
    const/4 v0, 0x2

    const v2, 0x7f120ce6

    invoke-interface {p1, v1, v0, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 67
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServicesOLD;->updateOptionsMenu()V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 53
    iget-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView;->doCreate()V

    .line 54
    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mLoadingContainer:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServicesOLD;->mLoadingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 58
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 94
    return v2

    .line 91
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 92
    goto :goto_0

    .line 88
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 89
    nop

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServicesOLD;->updateOptionsMenu()V

    .line 97
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 82
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServicesOLD;->updateOptionsMenu()V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 75
    .local v0, "haveData":Z
    iget-object v1, p0, Lcom/android/settings/applications/RunningServicesOLD;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    .line 76
    return-void
.end method
