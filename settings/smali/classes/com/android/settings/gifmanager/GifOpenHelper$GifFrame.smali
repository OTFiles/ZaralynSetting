.class Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;
.super Ljava/lang/Object;
.source "GifOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gifmanager/GifOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/settings/gifmanager/GifOpenHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/gifmanager/GifOpenHelper;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/gifmanager/GifOpenHelper;
    .param p2, "im"    # Landroid/graphics/Bitmap;
    .param p3, "del"    # I

    .line 18
    iput-object p1, p0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->this$0:Lcom/android/settings/gifmanager/GifOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 20
    iput p3, p0, Lcom/android/settings/gifmanager/GifOpenHelper$GifFrame;->delay:I

    .line 21
    return-void
.end method
