.class public Lcom/android/settings/inputmethod/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settingslib/core/instrumentation/Instrumentable;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocale:Ljava/lang/String;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .line 137
    new-instance v6, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v0, "word"

    const-string v2, "shortcut"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v2, 0x7f0d0228

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v6

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "shortcut"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "word=? AND shortcut is null OR shortcut=\'\'"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {p2, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "word=? AND shortcut=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .line 211
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "shortcut"

    .line 217
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 216
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .line 201
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    .line 207
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 206
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "editingWord"    # Ljava/lang/String;
    .param p2, "editingShortcut"    # Ljava/lang/String;

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "mode"

    if-nez p1, :cond_0

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "shortcut"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .line 192
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120f9b

    .line 194
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 198
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 70
    const/16 v0, 0x202

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "localeFromIntent":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 86
    .local v3, "arguments":Landroid/os/Bundle;
    if-nez v3, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    const-string v4, "locale"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "localeFromArguments":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    .line 90
    move-object v5, v4

    .local v5, "locale":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 91
    .end local v5
    :cond_2
    if-eqz v2, :cond_3

    .line 92
    move-object v5, v2

    goto :goto_2

    .line 94
    :cond_3
    move-object v5, v1

    .line 97
    .restart local v5
    :goto_3
    iput-object v5, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 99
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v6, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 101
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 154
    nop

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f120f9d

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    const v1, 0x7f08019f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 157
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 109
    const v1, 0x7f120faa

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    const v1, 0x10900c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 145
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "word":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "shortcut":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 240
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v1

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 131
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 120
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, "emptyView":Landroid/widget/TextView;
    const v1, 0x7f120fa7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 125
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    return-void
.end method
