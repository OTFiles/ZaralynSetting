.class public Lcom/android/settings/NavigationBarSettings$VPCellData;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VPCellData"
.end annotation


# instance fields
.field cellAnimResId:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

.field cellOrder:I

.field cellSummary:Ljava/lang/String;

.field cellTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/NavigationBarSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettings;
    .param p2, "iord"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "resId"    # [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 338
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettings$VPCellData;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput p2, p0, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellOrder:I

    .line 340
    iput-object p3, p0, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellTitle:Ljava/lang/String;

    .line 341
    iput-object p4, p0, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellSummary:Ljava/lang/String;

    .line 342
    iput-object p5, p0, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellAnimResId:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 343
    return-void
.end method
