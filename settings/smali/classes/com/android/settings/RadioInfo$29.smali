.class Lcom/android/settings/RadioInfo$29;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1545
    iput-object p1, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .line 1548
    iget-object v0, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p3}, Lcom/android/settings/RadioInfo;->access$4702(Lcom/android/settings/RadioInfo;I)I

    .line 1549
    iget-object v0, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3100(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$4800()[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 1550
    iget-object v0, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)V

    .line 1551
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .line 1554
    return-void
.end method
