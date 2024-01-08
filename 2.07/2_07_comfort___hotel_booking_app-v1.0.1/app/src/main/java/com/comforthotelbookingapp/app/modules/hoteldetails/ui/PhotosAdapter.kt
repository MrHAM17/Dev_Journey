package com.comforthotelbookingapp.app.modules.hoteldetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowPhotosBinding
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.PhotosRowModel
import kotlin.Int
import kotlin.collections.List

class PhotosAdapter(
  var list: List<PhotosRowModel>
) : RecyclerView.Adapter<PhotosAdapter.RowPhotosVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPhotosVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_photos,parent,false)
    return RowPhotosVH(view)
  }

  override fun onBindViewHolder(holder: RowPhotosVH, position: Int) {
    val photosRowModel = PhotosRowModel()
    // TODO uncomment following line after integration with data source
    // val photosRowModel = list[position]
    holder.binding.photosRowModel = photosRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PhotosRowModel>) {
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
      item: PhotosRowModel
    ) {
    }
  }

  inner class RowPhotosVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPhotosBinding = RowPhotosBinding.bind(itemView)
  }
}
