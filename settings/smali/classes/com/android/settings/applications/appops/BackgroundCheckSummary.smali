.class public Lcom/android/settings/applications/appops/BackgroundCheckSummary;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 37
    const/16 v0, 0x102

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1201b4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    iput-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "rootView":Landroid/view/View;
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 61
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0a0068

    new-instance v3, Lcom/android/settings/applications/appops/AppOpsCategory;

    sget-object v4, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    invoke-direct {v3, v4}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    const-string v4, "appops"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 63
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    return-object v0
.end method
