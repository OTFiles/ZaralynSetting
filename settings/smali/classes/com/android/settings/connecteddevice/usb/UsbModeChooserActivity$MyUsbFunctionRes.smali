.class public Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyUsbFunctionRes"
.end annotation


# instance fields
.field public mSummaryId:I

.field public mTitleId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "titleId"    # I
    .param p2, "summaryId"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;->mTitleId:I

    .line 81
    iput p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;->mSummaryId:I

    .line 82
    return-void
.end method
