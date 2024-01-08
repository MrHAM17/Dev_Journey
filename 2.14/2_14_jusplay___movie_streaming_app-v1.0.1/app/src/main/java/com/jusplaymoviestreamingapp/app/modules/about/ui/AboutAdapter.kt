package com.jusplaymoviestreamingapp.app.modules.about.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowAboutBinding
import com.jusplaymoviestreamingapp.app.modules.about.`data`.model.AboutRowModel
import kotlin.Int
import kotlin.collections.List

class AboutAdapter(
  var list: List<AboutRowModel>
) : RecyclerView.Adapter<AboutAdapter.RowAboutVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAboutVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_about,parent,false)
    return RowAboutVH(view)
  }

  override fun onBindViewHolder(holder: RowAboutVH, position: Int) {
    val aboutRowModel = AboutRowModel()
    // TODO uncomment following line after integration with data source
    // val aboutRowModel = list[position]
    holder.binding.aboutRowModel = aboutRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AboutRowModel>) {
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
      item: AboutRowModel
    ) {
    }
  }

  inner class RowAboutVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAboutBinding = RowAboutBinding.bind(itemView)
  }
}
