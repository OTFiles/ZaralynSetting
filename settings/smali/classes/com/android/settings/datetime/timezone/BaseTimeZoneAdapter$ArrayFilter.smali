.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayFilter"
.end annotation


# instance fields
.field private mBreakIterator:Landroid/icu/text/BreakIterator;

.field final synthetic this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 226
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<TT;>.ArrayFilter;"
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 234
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<TT;>.ArrayFilter;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$100(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;

    move-result-object v0

    .local v0, "newItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto/16 :goto_4

    .line 237
    .end local v0
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-static {v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "prefixString":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "newItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-static {v2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$100(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    .line 242
    .local v3, "item":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;, "TT;"
    invoke-interface {v3}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getSearchKeys()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 243
    .local v7, "searchKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-static {v8}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    goto :goto_3

    .line 249
    :cond_1
    iget-object v8, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v8, v7}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 250
    const/4 v8, 0x0

    .local v8, "wordStart":I
    iget-object v9, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v9}, Landroid/icu/text/BreakIterator;->next()I

    move-result v9

    .line 251
    .local v9, "wordLimit":I
    :goto_2
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 254
    iget-object v10, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v10}, Landroid/icu/text/BreakIterator;->getRuleStatus()I

    move-result v10

    if-eqz v10, :cond_2

    .line 255
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 256
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    goto :goto_3

    .line 252
    :cond_2
    move v8, v9

    .line 253
    iget-object v10, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v10}, Landroid/icu/text/BreakIterator;->next()I

    move-result v9

    goto :goto_2

    .line 242
    .end local v7
    .end local v8
    .end local v9
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 262
    .end local v3
    :cond_4
    :goto_3
    goto :goto_0

    .line 265
    .end local v0
    :cond_5
    move-object v0, v1

    .end local v1
    .local v0, "newItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_4
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 266
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 269
    return-object v1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 275
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<TT;>.ArrayFilter;"
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->access$202(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/util/List;)Ljava/util/List;

    .line 276
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->notifyDataSetChanged()V

    .line 277
    return-void
.end method
