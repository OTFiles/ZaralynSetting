.class Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneViewBinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datetime/ZonePicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/datetime/ZonePicker$1;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "textRepresentation"    # Ljava/lang/String;

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method
