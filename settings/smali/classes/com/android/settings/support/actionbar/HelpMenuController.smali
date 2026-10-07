.class public Lcom/android/settings/support/actionbar/HelpMenuController;
.super Ljava/lang/Object;
.source "HelpMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Fragment;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    .line 51
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservableFragment;

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 47
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    .line 42
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 55
    iget-object v0, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "arguments":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 57
    .local v1, "helpResourceId":I
    if-eqz v0, :cond_0

    const-string v2, "help_uri_resource"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "help_uri_resource"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    check-cast v2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    invoke-interface {v2}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result v1

    .line 63
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 64
    .local v2, "helpUri":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 68
    .local v3, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 69
    iget-object v4, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    :cond_3
    return-void
.end method
