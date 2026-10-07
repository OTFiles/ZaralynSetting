.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 236
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const-string v1, "MODE_SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 243
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const-string v1, "MODE_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 248
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const-string v1, "MODE_ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 230
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->value:I

    .line 255
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 230
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .locals 1

    .line 230
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->value:I

    return v0
.end method
