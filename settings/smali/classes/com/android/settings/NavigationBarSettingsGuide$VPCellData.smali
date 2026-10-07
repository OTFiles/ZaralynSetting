.class public Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;
.super Ljava/lang/Object;
.source "NavigationBarSettingsGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettingsGuide;
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

.field final synthetic this$0:Lcom/android/settings/NavigationBarSettingsGuide;


# direct methods
.method public constructor <init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettingsGuide;
    .param p2, "iord"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "resId"    # [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 352
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput p2, p0, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;->cellOrder:I

    .line 354
    iput-object p3, p0, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;->cellTitle:Ljava/lang/String;

    .line 355
    iput-object p4, p0, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;->cellSummary:Ljava/lang/String;

    .line 356
    iput-object p5, p0, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;->cellAnimResId:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 357
    return-void
.end method
