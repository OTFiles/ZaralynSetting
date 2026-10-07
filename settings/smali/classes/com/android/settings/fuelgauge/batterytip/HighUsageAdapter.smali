.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHighUsageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "highUsageAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    .line 63
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->onBindViewHolder(Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 77
    .local v0, "app":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 79
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 78
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-wide v1, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    long-to-double v3, v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
