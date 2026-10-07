.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BaseTimeZonePicker.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

.field private final mDefaultExpandSearch:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mSearchEnabled:Z

.field private final mSearchHintResId:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private final mTitleResId:I


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 1
    .param p1, "titleResId"    # I
    .param p2, "searchHintResId"    # I
    .param p3, "searchEnabled"    # Z
    .param p4, "defaultExpandSearch"    # Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    .line 72
    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    .line 74
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    .line 75
    return-void
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    if-eqz v0, :cond_1

    .line 122
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
    const v0, 0x7f0a0461

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 125
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    .line 127
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    iget v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 130
    iget-boolean v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 132
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const-string v4, ""

    invoke-virtual {v1, v4, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x10203d7

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    .local v1, "searchViewView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 141
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 140
    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x10203d3

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "editFrame":Landroid/view/View;
    nop

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 147
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v0
    .end local v1
    .end local v3
    .end local v4
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    const/4 v0, 0x0

    const v1, 0x7f0d020b

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a034a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 89
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;

    invoke-direct {v5, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-direct {v3, v4, v5}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    .line 95
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 97
    return-object v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->filter(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 2
    .param p1, "timeZoneData"    # Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 101
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 103
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 104
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    :cond_0
    return-void
.end method
