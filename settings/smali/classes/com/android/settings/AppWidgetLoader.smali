.class public Lcom/android/settings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppWidgetLoader$ItemConstructor;,
        Lcom/android/settings/AppWidgetLoader$LabelledItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/settings/AppWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/settings/AppWidgetLoader;, "Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p3, "itemConstructor":Lcom/android/settings/AppWidgetLoader$ItemConstructor;, "Lcom/android/settings/AppWidgetLoader$ItemConstructor<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 49
    iput-object p3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    .line 50
    return-void
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/android/settings/AppWidgetLoader;, "Lcom/android/settings/AppWidgetLoader<TItem;>;"
    const-string v0, "customSort"

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    .local v0, "sortCustomAppWidgets":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const-string v3, "categoryFilter"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, "categoryFilter":I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 160
    :cond_0
    new-instance v3, Lcom/android/settings/AppWidgetLoader$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AppWidgetLoader$1;-><init>(Lcom/android/settings/AppWidgetLoader;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    if-nez v0, :cond_1

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v3, "customItems":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    .end local v3
    :cond_1
    return-object v2
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6
    .param p4, "categoryFilter"    # I
    .param p5, "ignoreFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TItem;>;IZ)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/settings/AppWidgetLoader;, "Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, "appWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, "customExtras":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 123
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez p5, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v3, p4

    if-nez v3, :cond_1

    .line 124
    goto :goto_2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    iget-object v4, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 128
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 127
    :goto_1
    invoke-interface {v3, v4, v2, v5}, Lcom/android/settings/AppWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/AppWidgetLoader$LabelledItem;

    .line 130
    .local v3, "item":Lcom/android/settings/AppWidgetLoader$LabelledItem;, "TItem;"
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2
    .end local v3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1
    :cond_3
    return-void
.end method

.method putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/settings/AppWidgetLoader;, "Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, "customInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "customExtras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v2, "customInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 68
    .local v2, "customInfoSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 70
    .local v5, "p":Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v6, :cond_1

    goto :goto_1

    .line 68
    .end local v5
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .restart local v5
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 72
    const-string v3, "AppWidgetAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_5

    .line 77
    .end local v4
    .end local v5
    :cond_3
    const-string v4, "customExtras"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    const/4 v0, 0x0

    .line 80
    const-string v3, "AppWidgetAdapter"

    const-string v4, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_5

    .line 84
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 85
    .local v4, "customExtrasSize":I
    if-eq v2, v4, :cond_5

    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    const-string v3, "AppWidgetAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_5

    .line 94
    :cond_5
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_9

    .line 95
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 96
    .restart local v5
    if-eqz v5, :cond_7

    instance-of v6, v5, Landroid/os/Bundle;

    if-nez v6, :cond_6

    goto :goto_3

    .line 94
    .end local v5
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    .restart local v5
    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    const-string v6, "AppWidgetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_5

    .line 63
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_8
    :goto_4
    const-string v2, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    nop

    .line 106
    :cond_9
    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, v0

    move-object v6, v1

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 107
    return-void
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 7
    .param p2, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;I)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/android/settings/AppWidgetLoader;, "Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 180
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 182
    return-void
.end method
