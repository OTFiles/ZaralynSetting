.class public Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SuggestionAdapter.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;,
        Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/settingslib/utils/IconCache;

.field private final mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

.field private final mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private final mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/os/Bundle;Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestionControllerMixin"    # Lcom/android/settingslib/suggestions/SuggestionControllerMixin;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "callback"    # Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;
    .param p5, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 83
    new-instance v0, Lcom/android/settingslib/utils/IconCache;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    .line 84
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 85
    .local v0, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 87
    iput-object p4, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const-string v1, "suggestion_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 90
    const-string v1, "suggestions_shown_logged"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    .line 96
    :goto_0
    if-eqz p5, :cond_1

    .line 97
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->setHasStableIds(Z)V

    .line 102
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 3
    .param p1, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;
    .param p2, "v"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->dismissSuggestion(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/service/settings/suggestions/Suggestion;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;->onSuggestionClosed(Landroid/service/settings/suggestions/Suggestion;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;
    .param p3, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x182

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 164
    :try_start_0
    invoke-virtual {p2}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 168
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SuggestionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start suggestion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/settings/suggestions/Suggestion;

    invoke-virtual {v1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;

    move-result-object v0

    .line 180
    .local v0, "suggestion":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 181
    const v1, 0x7f0d01c6

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getItemCount()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 184
    const v1, 0x7f0d01c4

    return v1

    .line 186
    :cond_1
    const v1, 0x7f0d01c5

    return v1
.end method

.method public getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;
    .locals 8
    .param p1, "position"    # I

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getItemId(I)J

    move-result-wide v0

    .line 196
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 197
    return-object v3

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/settings/suggestions/Suggestion;

    .line 200
    .local v4, "suggestion":Landroid/service/settings/suggestions/Suggestion;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_1

    .line 201
    return-object v4

    .line 203
    .end local v4
    :cond_1
    goto :goto_0

    .line 204
    :cond_2
    return-object v3
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "position"    # I

    .line 112
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/settings/suggestions/Suggestion;

    .line 113
    .local v0, "suggestion":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 115
    .local v2, "suggestionCount":I
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0x180

    new-array v7, v4, [Landroid/util/Pair;

    invoke-virtual {v3, v5, v6, v1, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 118
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 121
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    invoke-virtual {v5, v3}, Lcom/android/settingslib/utils/IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 125
    :cond_1
    iget-object v6, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v6, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v6, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const v8, 0x1040141

    .line 128
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-static {v7, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    .line 133
    .local v6, "summary":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    iget-object v7, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v7, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    .end local v6
    :goto_0
    goto :goto_1

    .line 140
    :cond_3
    iget-object v4, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->setCardLayout(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    .line 143
    :goto_1
    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a00e8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 144
    .local v4, "closeButton":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 145
    new-instance v6, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;-><init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_4
    iget-object v6, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    .line 157
    .local v6, "clickHandler":Landroid/view/View;
    iget-object v7, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v8, 0x102000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 158
    .local v7, "primaryAction":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 159
    move-object v6, v7

    .line 161
    :cond_5
    new-instance v8, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;

    invoke-direct {v8, p0, v1, v0}, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;-><init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 106
    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "suggestion_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    :cond_0
    const-string v0, "suggestions_shown_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 220
    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 224
    return-void
.end method
