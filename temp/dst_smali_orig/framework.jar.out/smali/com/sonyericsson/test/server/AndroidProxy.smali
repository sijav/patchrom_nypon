.class Lcom/sonyericsson/test/server/AndroidProxy;
.super Ljava/lang/Object;
.source "AndroidProxy.java"

# interfaces
.implements Lcom/sonyericsson/test/server/IAndroidProxy;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, idStr:Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1           #idStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #idStr:Ljava/lang/String;
    goto :goto_0

    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #idStr:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #idStr:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getViewChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"

    .prologue
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Checkable;

    .end local p1
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "viewGroup"
    .parameter "i"

    .prologue
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewChildCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "viewGroup"

    .prologue
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/sonyericsson/test/server/AndroidProxy;->context:Landroid/content/Context;

    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/test/server/AndroidProxy;->resolveId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewLocationOnScreen(Ljava/lang/Object;)[I
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, xy:[I
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method public getViewSize(Ljava/lang/Object;)[I
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, size:[I
    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getViewText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "view"

    .prologue
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, in:Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, "\\\\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #in:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVisible(Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"

    .prologue
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextFromView(Ljava/lang/Object;)V
    .locals 1
    .parameter "view"

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/test/server/AndroidProxy;->context:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public unsetContext()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/test/server/AndroidProxy;->context:Landroid/content/Context;

    return-void
.end method
