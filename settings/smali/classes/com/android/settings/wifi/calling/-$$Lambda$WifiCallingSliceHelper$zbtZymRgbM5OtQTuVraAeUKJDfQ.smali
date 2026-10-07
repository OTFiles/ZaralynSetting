.class public final synthetic Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/support/v4/graphics/drawable/IconCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$2:Z

    iput-object p4, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$2:Z

    iget-object v3, p0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->lambda$getWifiCallingSlice$0(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
