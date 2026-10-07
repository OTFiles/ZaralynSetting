.class Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;
.super Ljava/lang/Object;
.source "CameraMaxSize.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/CameraMaxSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/CameraMaxSize$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/deviceinfo/CameraMaxSize$1;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 6
    .param p1, "lhs"    # Landroid/hardware/Camera$Size;
    .param p2, "rhs"    # Landroid/hardware/Camera$Size;

    .line 153
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, v0

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 148
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
