.class Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/notification/NotificationAppListSettings$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field appBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppListSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 393
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    .line 394
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 395
    new-instance p1, Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationAppListSettings$Backend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->appBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    .line 396
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 450
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 452
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 455
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 457
    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationAppListSettings$Row;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationAppListSettings$Row;
    .param p3, "animate"    # Z

    .line 460
    instance-of v0, p2, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    if-nez v0, :cond_0

    .line 462
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 463
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/android/settings/notification/NotificationAppListSettings$Row;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    return-void

    .line 467
    .end local v0
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 468
    .local v0, "row":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;

    .line 469
    .local v1, "vh":Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p3}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 471
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;Lcom/android/settings/notification/NotificationAppListSettings$AppRow;Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p3}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 495
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-boolean v3, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 501
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 405
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppListSettings$Row;

    .line 416
    .local v0, "r":Lcom/android/settings/notification/NotificationAppListSettings$Row;
    instance-of v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPositionForSection(I)I
    .locals 6
    .param p1, "sectionIndex"    # I

    .line 525
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    .local v0, "section":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getCount()I

    move-result v1

    .line 527
    .local v1, "n":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 528
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppListSettings$Row;

    .line 529
    .local v4, "r":Lcom/android/settings/notification/NotificationAppListSettings$Row;
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppListSettings$Row;->section:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    return v3

    .line 527
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .end local v3
    :cond_1
    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppListSettings$Row;

    .line 539
    .local v0, "row":Lcom/android/settings/notification/NotificationAppListSettings$Row;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppListSettings$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppListSettings$Row;

    .line 422
    .local v0, "r":Lcom/android/settings/notification/NotificationAppListSettings$Row;
    if-nez p2, :cond_0

    .line 423
    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppListSettings$Row;)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    goto :goto_0

    .line 425
    .end local v1
    :cond_0
    move-object v1, p2

    .line 427
    .restart local v1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationAppListSettings$Row;Z)V

    .line 428
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 410
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppListSettings$Row;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationAppListSettings$Row;

    .line 432
    instance-of v0, p2, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00fe

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00f9

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 436
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;-><init>(Lcom/android/settings/notification/NotificationAppListSettings$1;)V

    .line 437
    .local v1, "vh":Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 438
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 439
    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 440
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 441
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->title:Landroid/widget/TextView;

    .line 442
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 443
    const v2, 0x7f0a0381

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->rowDivider:Landroid/view/View;

    .line 444
    const v2, 0x7f0a0382

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 446
    return-object v0
.end method
