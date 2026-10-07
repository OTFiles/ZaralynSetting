.class public Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "SearchMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Fragment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    .line 52
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservableFragment;

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 48
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 56
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    return-void

    .line 81
    :cond_2
    return-void
.end method
