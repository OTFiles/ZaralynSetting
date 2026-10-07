.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appTime:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->view:Landroid/view/View;

    .line 54
    const v0, 0x7f0a005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0a005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appTime:Landroid/widget/TextView;

    .line 57
    return-void
.end method
