.class public Lcom/android/settings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/settings/UsageStatsActivity$AppViewHolder;,
        Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;,
        Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/settings/UsageStatsActivity$AppNameComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UsageStatsActivity;

    .line 51
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UsageStatsActivity;

    .line 51
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UsageStatsActivity;

    .line 51
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->setContentView(I)V

    .line 234
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 235
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    const v0, 0x7f0a04ae

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 239
    .local v0, "typeSpinner":Landroid/widget/Spinner;
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    const v1, 0x7f0a0301

    invoke-virtual {p0, v1}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 242
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    .line 243
    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 248
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    .line 249
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 254
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
