.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;


# instance fields
.field private mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mIsUiRestricted:Z

.field private mMenu:Landroid/view/Menu;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    const-string v0, "no_config_locale"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/localepicker/LocaleListEditor;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/localepicker/LocaleListEditor;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/localepicker/LocaleListEditor;

    .line 49
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/localepicker/LocaleListEditor;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 257
    const v0, 0x7f0a0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 258
    .local v0, "list":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    .line 259
    .local v1, "llm":Lcom/android/settings/localepicker/LocaleLinearLayoutManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 262
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 263
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 264
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 266
    const v2, 0x7f0a0031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    .line 267
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    new-instance v3, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v3, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method private getUserLocaleList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 249
    .local v1, "localeList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 250
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 251
    .local v3, "locale":Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v2
    :cond_0
    return-object v0
.end method

.method private setRemoveMode(Z)V
    .locals 2
    .param p1, "mRemoveMode"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 158
    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    .line 168
    .local v0, "checkedCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 170
    return-void

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    const v3, 0x1040013

    if-ne v0, v2, :cond_1

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 176
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12056b

    .line 177
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12056a

    .line 178
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 179
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 192
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100015

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "title":Ljava/lang/String;
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 198
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f12056c

    .line 200
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x1040009

    new-instance v5, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v5, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 201
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v4, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 207
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v3, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 296
    .local v0, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 297
    nop

    .line 298
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 300
    .local v1, "hasMultipleLanguages":Z
    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    .end local v1
    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 69
    const/16 v0, 0x158

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getUserLocaleList()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "feedsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 237
    nop

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f1207ad

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 239
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 240
    const v1, 0x7f080157

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 242
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 243
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 244
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "result":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d00da

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "myLayout":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    .line 88
    return-object v0
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1
    .param p1, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 284
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 146
    return v2

    .line 150
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 137
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_1

    .line 140
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 142
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 93
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 96
    .local v0, "previouslyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 98
    .local v1, "emptyView":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 100
    const v2, 0x7f120788

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    goto :goto_0

    .line 103
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 105
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "localeRemoveMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 115
    const-string v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 123
    :cond_1
    return-void
.end method
