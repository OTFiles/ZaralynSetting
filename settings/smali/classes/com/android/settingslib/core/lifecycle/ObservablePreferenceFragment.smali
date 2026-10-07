.class public abstract Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ObservablePreferenceFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 135
    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    sget v0, Lcom/android/settingslib/R$layout;->locallib_preference_recyclerview:I

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/readboy/BaseRecyclerView;

    .line 61
    .local v0, "recyclerView":Lcom/android/settingslib/readboy/BaseRecyclerView;
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/readboy/BaseRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v1, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/readboy/BaseRecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 65
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 128
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 149
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 150
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 152
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 114
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 115
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 142
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 107
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 108
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 100
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 121
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStop()V

    .line 122
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 86
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 87
    return-void
.end method
