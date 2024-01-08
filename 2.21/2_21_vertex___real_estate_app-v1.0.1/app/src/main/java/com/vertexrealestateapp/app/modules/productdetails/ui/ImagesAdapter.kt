package com.vertexrealestateapp.app.modules.productdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowImagesBinding
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ImagesRowModel
import kotlin.Int
import kotlin.collections.List

class ImagesAdapter(
  var list: List<ImagesRowModel>
) : RecyclerView.Adapter<ImagesAdapter.RowImagesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowImagesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_images,parent,false)
    return RowImagesVH(view)
  }

  override fun onBindViewHolder(holder: RowImagesVH, position: Int) {
    val imagesRowModel = ImagesRowModel()
    // TODO uncomment following line after integration with data source
    // val imagesRowModel = list[position]
    holder.binding.imagesRowModel = imagesRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ImagesRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ImagesRowModel
    ) {
    }
  }

  inner class RowImagesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowImagesBinding = RowImagesBinding.bind(itemView)
  }
}
