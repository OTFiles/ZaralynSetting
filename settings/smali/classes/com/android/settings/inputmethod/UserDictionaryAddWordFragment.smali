.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "localesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 108
    const/16 v0, 0x3e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1204fd

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    const v1, 0x7f080157

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .line 60
    const v0, 0x7f0d0227

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 101
    return v1

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 128
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 133
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 116
    return-void
.end method
