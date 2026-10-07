.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    .line 612
    return-void
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "level"    # I

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getWifiIconResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
