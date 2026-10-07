.class public Lcom/android/settings/datetime/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/ZonePicker$MyComparator;,
        Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortedByName"    # Z

    .line 75
    const v0, 0x7f0d0090

    invoke-static {p0, p1, v0}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortedByName"    # Z
    .param p2, "layoutId"    # I

    .line 86
    const-string v0, "display_label"

    const-string v1, "offset_label"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "from":[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 92
    .local v7, "to":[I
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "display_label"

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "offset"

    .line 95
    .local v0, "sortKey":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/settings/datetime/ZonePicker$MyComparator;

    invoke-direct {v1, v0}, Lcom/android/settings/datetime/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "comparator":Lcom/android/settings/datetime/ZonePicker$MyComparator;
    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZonesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 97
    .local v8, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    new-instance v9, Landroid/widget/SimpleAdapter;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v8

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 103
    .local v2, "adapter":Landroid/widget/SimpleAdapter;
    new-instance v3, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;-><init>(Lcom/android/settings/datetime/ZonePicker$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 104
    return-object v2

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 6
    .param p0, "adapter"    # Landroid/widget/SimpleAdapter;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 133
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "defaultId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v1

    .line 135
    .local v1, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 137
    invoke-virtual {p0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 138
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    return v2

    .line 135
    .end local v3
    .end local v4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method static prepareCustomPreferencesList(Landroid/widget/ListView;)V
    .locals 1
    .param p0, "list"    # Landroid/widget/ListView;

    .line 226
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 229
    return-void
.end method

.method private setSorting(Z)V
    .locals 2
    .param p1, "sortByTimezone"    # Z

    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 234
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    .line 236
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 237
    .local v1, "defaultIndex":I
    if-ltz v1, :cond_1

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSelection(I)V

    .line 240
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 149
    const/16 v0, 0x203

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 154
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 158
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 161
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setHasOptionsMenu(Z)V

    .line 163
    const v1, 0x7f1204d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 168
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f121288

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 185
    const v2, 0x108009c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const/4 v1, 0x2

    const v2, 0x7f121289

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    const v1, 0x7f08019c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 178
    .local v1, "list":Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/datetime/ZonePicker;->prepareCustomPreferencesList(Landroid/widget/ListView;)V

    .line 179
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 247
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "tzId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 251
    .local v2, "activity":Landroid/app/Activity;
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 252
    .local v3, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 221
    return v1

    .line 213
    :pswitch_0    # 0x2
    invoke-direct {p0, v2}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 214
    return v2

    .line 217
    :pswitch_1    # 0x1
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 218
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 260
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    .line 262
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 206
    return-void
.end method
